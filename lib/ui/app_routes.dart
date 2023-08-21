import 'package:flutter/material.dart';

import 'home/home_screen.dart';

class AppRoute {
  static const String homeScreen = '/homeScreen';
  static const String settingsScreen = '/settingsScreen';

  static Route<dynamic> generateAppRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return _BaseTransitionPageRoute(
            builder: (_) => const HomeScreen(),
            settings: settings
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

class _BaseTransitionPageRoute<T> extends MaterialPageRoute<T> {
  _BaseTransitionPageRoute({
    required WidgetBuilder builder,
    required RouteSettings settings,
  }) : super(builder: builder, settings: settings);
}

class _NoAnimationMaterialPageRoute<T> extends MaterialPageRoute<T> {
  _NoAnimationMaterialPageRoute({
    required WidgetBuilder builder,
    required RouteSettings settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
      builder: builder,
      maintainState: maintainState,
      settings: settings,
      fullscreenDialog: fullscreenDialog);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return child;
  }
}

class _FadeTransitionPageRoute<T> extends MaterialPageRoute<T> {
  _FadeTransitionPageRoute({
    required WidgetBuilder builder,
    required RouteSettings settings,
  }) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    if (animation.status == AnimationStatus.reverse) {
      return super.buildTransitions(context, animation, secondaryAnimation, child);
    }
    return FadeTransition(opacity: animation, child: child);
  }
}
