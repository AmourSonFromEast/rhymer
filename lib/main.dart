import 'package:flutter/material.dart';
import 'package:flutter_application_test/router/router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ui/ui.dart';

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
        return MaterialApp.router(
          title: 'Rhymer',
          theme: themeData,
          debugShowCheckedModeBanner: false,
          routerConfig: _router.config(),
        );
      },
    );
  }
}
