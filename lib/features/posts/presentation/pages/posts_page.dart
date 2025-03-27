import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tzapp/features/posts/domain/entities/post.dart';
import 'package:tzapp/features/posts/presentation/bloc/posts_bloc.dart';
import 'package:tzapp/features/posts/presentation/widgets/posts_list.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<PostsBloc>().add(const PostsEvent.refresh());
        },
        child: BlocBuilder<PostsBloc, PostsState>(
          builder: (context, state) {
            if (state is Initial) {
              context.read<PostsBloc>().add(const PostsEvent.fetch());
              return _loadingWidget();
            } else if (state is Loading) {
              return _loadingWidget();
            } else if (state is Loaded) {
              return _postsList(state.posts);
            } else if (state is Error) {
              return _errorWidget(state.message, context);
            } else if (state is Empty) {
              return _emptyWidget();
            }
            return _loadingWidget();
          },
        ),
      ),
    );
  }

  AppBar _appBar() => AppBar(title: const Text('Posts'));

  Widget _postsList(List<Post> posts) => PostsListWidget(posts: posts);

  Widget _errorWidget(String message, BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Error: $message'),
          ElevatedButton(
            onPressed: () =>
                context.read<PostsBloc>().add(const PostsEvent.fetch()),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  Widget _loadingWidget() => const Center(child: CircularProgressIndicator());

  Widget _emptyWidget() => const Center(child: Text('No posts available'));
}
