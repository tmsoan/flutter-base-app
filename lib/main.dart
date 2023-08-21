import 'package:flutter/material.dart';
import 'package:flutter_base_app/ui/splash/splash_screen.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'app_session.dart';
import 'ui/app_routes.dart';
import 'ui/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _setupApp();
  }

  void _setupApp() {
    AppSession();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      builder: EasyLoading.init(),
      onGenerateRoute: AppRoute.generateAppRoute,
      home: const SplashScreen(),
    );
  }
}
