import 'package:flutter/material.dart';

import 'package:flutter_application_test/router/router.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const RhymerApp());
}

class RhymerApp extends StatefulWidget {
  const RhymerApp({super.key});

  @override
  State<RhymerApp> createState() => _RhymerAppState();
}

class _RhymerAppState extends State<RhymerApp> {
  final _router = AppRouter();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        const primaryColor = Color(0xFFF82B10);
        return MaterialApp.router(
          title: 'Rhymer',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: primaryColor,
            scaffoldBackgroundColor: const Color(0xFFEFF1F3),
            colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
            useMaterial3: true,
          ),
          routerConfig: _router.config(),
        );
      },
    );
  }
}
