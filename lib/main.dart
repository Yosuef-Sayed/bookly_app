import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.theme,
      routerConfig: AppRouter.router,
    );
  }
}
