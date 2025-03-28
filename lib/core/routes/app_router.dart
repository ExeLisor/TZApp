import 'package:tzapp/export.dart';

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
