import 'package:go_router/go_router.dart';

import '../features/home/presentation/page/home_page.dart';

class AppRoutes {
  static const String rootPagePath = '/';
  static const String homePagePath = '/home';

  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: rootPagePath,
        builder: (_, __) => const HomePage(),
      ),
    ],
  );
}
