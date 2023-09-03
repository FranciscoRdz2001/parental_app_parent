import 'package:flutter/material.dart';
import 'package:parental_app_parent/routes/app_routes.dart';

import 'app/theme/app_theme.dart';

void main() {
  AppRoutes.instance.registerRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parentel App Parent',
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.instance.home.homeRoute,
      routes: AppRoutes.instance.getMaterialRoutes,
    );
  }
}
