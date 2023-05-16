import 'package:quiz_app/screens/screens.dart';
import 'import_resources.dart';

final GoRouter routes = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
    path: "/HomePage",
    builder: (context, state) => const HomePage(),
    routes: [
      GoRoute(
        name: "Result",
        path: "FinalResult",
        builder: (context, state) =>   FinalResult(),
      ),
    ]
  ),

]);
