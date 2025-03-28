import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tzapp/features/posts/presentation/pages/post_details_page.dart';
import 'package:tzapp/features/posts/presentation/pages/posts_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: PostsRoute.page,
          initial: true,
        ),
        CustomRoute(
          path: '/posts/:postId',
          page: PostDetailRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
      ];
}
