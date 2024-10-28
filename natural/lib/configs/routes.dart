import 'package:get/get.dart';
import '../views/screens/login_screen.dart';
import '../views/screens/register_screen.dart';
import '../views/screens/dashboard_screen.dart';

class Routes {
  static final routes = [
    GetPage(
      name: '/login',
      page: () => LoginScreen(),
    ),
    GetPage(
      name: '/register',
      page: () => RegisterScreen(),
    ),
    GetPage(
      name: '/dashboard',
      page: () => DashboardScreen(),
    ),
  ];
}
