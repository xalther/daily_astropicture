import 'package:daily_astropic/astro_picture/presentation/bloc/local_astro_picture_cubit/local_astro_picture_cubit.dart';
import 'package:daily_astropic/utils/di/service_locator.dart';
import 'package:daily_astropic/utils/router/app_router.dart';
import 'package:daily_astropic/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl.get<LocalAstroPictureCubit>()..getFavourites(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Daily Astropic',
        routerConfig: AppRouter.router,
        theme: AppTheme.theme,
      ),
    );
  }
}
