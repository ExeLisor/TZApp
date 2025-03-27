// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [PostDetailPage]
class PostDetailRoute extends PageRouteInfo<PostDetailRouteArgs> {
  PostDetailRoute({
    Key? key,
    required int postId,
    List<PageRouteInfo>? children,
  }) : super(
          PostDetailRoute.name,
          args: PostDetailRouteArgs(key: key, postId: postId),
          rawPathParams: {'postId': postId},
          initialChildren: children,
        );

  static const String name = 'PostDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<PostDetailRouteArgs>(
        orElse: () => PostDetailRouteArgs(postId: pathParams.getInt('postId')),
      );
      return PostDetailPage(key: args.key, postId: args.postId);
    },
  );
}

class PostDetailRouteArgs {
  const PostDetailRouteArgs({this.key, required this.postId});

  final Key? key;

  final int postId;

  @override
  String toString() {
    return 'PostDetailRouteArgs{key: $key, postId: $postId}';
  }
}

/// generated route for
/// [PostsPage]
class PostsRoute extends PageRouteInfo<void> {
  const PostsRoute({List<PageRouteInfo>? children})
      : super(PostsRoute.name, initialChildren: children);

  static const String name = 'PostsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PostsPage();
    },
  );
}
