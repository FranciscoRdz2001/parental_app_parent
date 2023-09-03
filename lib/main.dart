import 'package:flutter/material.dart';
import 'package:parental_app_parent/routes/app_routes.dart';

void main() {
  AppRoutes.instance.registerRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: AppRoutes.instance.home.home,
      routes: AppRoutes.instance.getMaterialRoutes,
    );
  }
}
