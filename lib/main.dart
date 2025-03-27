import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tzapp/core/routes/app_router.dart';
import 'package:tzapp/core/services/service_locator.dart';
import 'package:tzapp/features/posts/presentation/bloc/post_detail_bloc.dart';

import 'package:tzapp/features/posts/presentation/bloc/posts_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<PostsBloc>()),
        BlocProvider(create: (_) => getIt<PostDetailBloc>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
