import 'package:go_router/go_router.dart';
import 'package:playonix/core/constants/route_constants.dart';
import 'package:playonix/features/splash_screen/presentation/splash_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: RoutesConstants.splashScreen,
  routes: [
    GoRoute(
      path: RoutesConstants.splashScreen,
      name: 'SplashScreen',
      builder: (context, state) => const SplashScreen(),
    ),
    // GoRoute(
    //   path: '/login',
    //   name: 'login',
    //   builder: (context, state) => const LoginPage(),
    // ),
  ],
);
