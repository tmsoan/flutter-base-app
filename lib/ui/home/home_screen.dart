import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_app/ui/home/bloc/home_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:shared/shared.dart';

import 'bloc/home_bloc.dart';
import 'bloc/home_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();

  static provider(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(FetchTasksIntractor()),
      child: const HomeScreen(key: Key("HomeScreen"),),
    );
  }
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeBloc _homeBloc;
  var _isInitStated = false;

  @override
  void initState() {
    super.initState();
    _homeBloc = BlocProvider.of<HomeBloc>(context);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_isInitStated) {
      _isInitStated = true;
      _homeBloc.add(const HomeFetchingEvent());
    }
  }

  @override
  void dispose() {
    _homeBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        EasyLoading.show();
        kEZLogger.i(state);
      },
      child: Scaffold(
        appBar: AppBar(),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Loading...")])
          ],
        ),
      )
    );
  }

}
