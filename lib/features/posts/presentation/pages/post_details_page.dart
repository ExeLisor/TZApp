import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tzapp/core/services/service_locator.dart';
import 'package:tzapp/core/utils/utils.dart';
import 'package:tzapp/core/widgets/shimmer_widget.dart';

import 'package:tzapp/features/posts/presentation/bloc/post_detail_bloc.dart';
import 'package:tzapp/features/posts/presentation/widgets/post_placeholder.dart';
import 'package:tzapp/features/posts/presentation/widgets/post_widget.dart';

@RoutePage()
class PostDetailPage extends StatelessWidget {
  final int postId;

  const PostDetailPage({super.key, @PathParam() required this.postId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<PostDetailBloc>()..add(PostDetailEvent.fetch(postId)),
      child: Scaffold(
        appBar: _appBar(),
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: BlocBuilder<PostDetailBloc, PostDetailState>(
            builder: (context, state) {
              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: _buildContent(state, context),
              );
            },
          ),
        ),
      ),
    );
  }

  AppBar _appBar() => AppBar(title: const Text('Post Details'));

  Widget _buildContent(PostDetailState state, BuildContext context) {
    switch (state.runtimeType) {
      case const (Initial):
        return _loading(context);
      case const (Loading):
        return _loading(context);
      case const (Loaded):
        return _post((state as Loaded).post);
      case const (Error):
        return _error(context, (state as Error).message, postId);
      case const (NotFound):
        return _notFound(context);
      default:
        return _loading(context);
    }
  }

  Widget _post(post) => PostWidget(post: post);

  Widget _loading(BuildContext context) {
    final shimmerGradient = buildShimmerGradient(context);
    return Shimmer(
      linearGradient: shimmerGradient,
      child: const ShimmerLoading(
        isLoading: true,
        child: PostPlaceholder(),
      ),
    );
  }

  Widget _error(context, message, id) => AnimatedOpacity(
        opacity: 1.0,
        duration: const Duration(milliseconds: 300),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, size: 48, color: Colors.red),
                const SizedBox(height: 16),
                Text(
                  'Error loading post',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      );

  Widget _notFound(context) => AnimatedOpacity(
        opacity: 1.0,
        duration: const Duration(milliseconds: 300),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Post not found',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
        ),
      );
}
