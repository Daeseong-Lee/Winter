import 'package:get/get.dart';
import 'package:winter/pages/splash_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(name: Routes.SPLASH, page: () => SplashScreen()),
    GetPage(name: Routes.LOGIN, page: () => 
    // LoginScreen()),
    GetPage(name: Routes.HOME, page: () => 
    // HomeScreen()),
  ];
}
