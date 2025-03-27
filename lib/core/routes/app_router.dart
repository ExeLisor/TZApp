import 'package:auto_route/auto_route.dart';
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
      ];
}
