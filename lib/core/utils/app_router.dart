import 'package:go_router/go_router.dart';
import 'package:subul_dashboard/Features/home_view/presentation/home_view.dart';

abstract class AppRouter {
  
  static var router = GoRouter(routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
  ]);
}
