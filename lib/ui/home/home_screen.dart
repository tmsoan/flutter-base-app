import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import '../../app_session.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    kEZLogger.i('Test AppSession.counter: ${AppSession().counter}');
    kEZLogger.i('Log from Main. Then call domain');
    LoginInteractor().testLogin();
  }

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("This is Home Screen")
        ],
      ),
    );
  }
}
