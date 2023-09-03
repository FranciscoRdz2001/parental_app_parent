import 'package:parental_app_parent/modules/home/pages/home_pages.dart';
import 'package:parental_app_parent/routes/module_router_base.dart';

class HomeRouter implements ModuleRouterBase {
  final home = '/home';

  @override
  List<AppRoute> get getRoutes => [
        AppRoute(
          routeName: home,
          page: const HomePage(),
        ),
      ];
}
