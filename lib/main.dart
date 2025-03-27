import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tzapp/core/routes/app_router.dart';
import 'package:tzapp/core/services/service_locator.dart';

import 'package:tzapp/features/posts/presentation/bloc/posts_bloc.dart';
import 'package:tzapp/features/posts/presentation/pages/posts_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PostsBloc>(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter().config(),
      ),
    );
  }
}
