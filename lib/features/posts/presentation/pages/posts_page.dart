import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tzapp/core/utils/utils.dart';
import 'package:tzapp/core/widgets/shimmer_widget.dart';
import 'package:tzapp/features/posts/domain/entities/post.dart';
import 'package:tzapp/features/posts/presentation/bloc/posts_bloc.dart';
import 'package:tzapp/features/posts/presentation/widgets/posts_placeholder.dart';
import 'package:tzapp/features/posts/presentation/widgets/posts_list.dart';
import 'package:tzapp/features/theme/presentation/widgets/theme_switcher.dart';

@RoutePage()
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
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: _buildContent(state, context),
            );
          },
        ),
      ),
    );
  }

  Widget _buildContent(PostsState state, BuildContext context) {
    switch (state.runtimeType) {
      case const (Initial):
        context.read<PostsBloc>().add(const PostsEvent.fetch());
        return _loading(context);
      case const (Loading):
        return _loading(context);
      case const (Loaded):
        return _loaded(state as Loaded);
      case const (Error):
        return _error(state as Error, context);
      case const (Empty):
        return _empty(context);
      default:
        return _loading(context);
    }
  }

  Widget _loading(BuildContext context) {
    final shimmerGradient = buildShimmerGradient(context);
    return Shimmer(
      linearGradient: shimmerGradient,
      child: const ShimmerLoading(
        isLoading: true,
        child: PostsPlaceholder(),
      ),
    );
  }

  Widget _loaded(Loaded state) {
    return AnimatedOpacity(
      opacity: 1.0,
      duration: const Duration(milliseconds: 300),
      child: _postsList(state.posts),
    );
  }

  Widget _error(Error state, BuildContext context) {
    return AnimatedOpacity(
      opacity: 1.0,
      duration: const Duration(milliseconds: 300),
      child: _errorWidget(state.message, context),
    );
  }

  Widget _empty(BuildContext context) {
    return AnimatedOpacity(
      opacity: 1.0,
      duration: const Duration(milliseconds: 300),
      child: _emptyWidget(context),
    );
  }

  AppBar _appBar() => AppBar(
        title: const Text('Posts'),
        actions: const [
          ThemeSwitch(),
        ],
      );

  Widget _postsList(List<Post> posts) => PostsListWidget(posts: posts);

  Widget _errorWidget(String message, BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Error: $message'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () =>
                context.read<PostsBloc>().add(const PostsEvent.fetch()),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  Widget _emptyWidget(BuildContext context) {
    return Center(
      child: Text(
        'No posts available',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
