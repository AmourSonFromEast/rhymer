import 'package:auto_route/auto_route.dart';
import 'package:flutter_application_test/features/favorite/view/favorites_screen.dart';
import 'package:flutter_application_test/features/home/view/home_screen.dart';
import 'package:flutter_application_test/features/history/view/history_screen.dart';
import 'package:flutter_application_test/features/search/view/search_screen.dart';
import 'package:flutter_application_test/features/settings/view/settings_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/', children: [
          AutoRoute(
            page: SearchRoute.page,
            path: 'search',
          ),
          AutoRoute(
            page: FavoritesRoute.page,
            path: 'favorites',
          ),
          AutoRoute(
            page: HistoryRoute.page,
            path: 'poems',
          ),
          AutoRoute(
            page: SettingsRoute.page,
            path: 'settings',
          ),
        ]),
      ];
}
