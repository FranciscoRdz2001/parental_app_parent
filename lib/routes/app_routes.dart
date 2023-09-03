import 'package:flutter/widgets.dart';
import 'package:parental_app_parent/routes/module_router_base.dart';
import 'package:parental_app_parent/routes/routes.dart';

class AppRoutes {
  static final AppRoutes _instance = AppRoutes._internal();

  AppRoutes._internal() {
    registerRoutes();
  }

  static AppRoutes get instance => _instance;

  final HomeRouter home = HomeRouter();
  List<ModuleRouterBase> modules = [];

  void registerRoutes() {
    modules = [
      home,
    ];
  }

  List<AppRoute> get getRoutes {
    return modules.expand((m) => m.getRoutes).toList();
  }

  Map<String, Widget Function(BuildContext context)> get getMaterialRoutes =>
      Map.fromEntries(
        {
          ...getRoutes.map((e) => MapEntry(e.routeName, (context) => e.page)),
        },
      );
}
