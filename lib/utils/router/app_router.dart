import 'package:daily_astropic/astro_picture/models/picture.dart';
import 'package:daily_astropic/astro_picture/presentation/views/favourites_details_view.dart';
import 'package:daily_astropic/astro_picture/presentation/views/favourites_view.dart';
import 'package:daily_astropic/astro_picture/presentation/views/home_view.dart';
import 'package:daily_astropic/astro_picture/presentation/views/picture_details_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/picture-details',
        builder: (context, state) => const PictureDetailsView(),
      ),
      GoRoute(
        path: '/favourites',
        builder: (context, state) => const FavouritesView(),
      ),
      GoRoute(
        path: '/favourites-details',
        builder: (context, state) => FavouritesDetailsView(
          picture: state.extra as Picture,
        ),
      ),
    ],
  );
}
