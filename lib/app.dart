import 'package:flutter/material.dart';
import 'config/palette.dart';
import 'screens/home/home.dart';
import 'screens/splash/splash.dart';


class App extends StatelessWidget {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  void _navigateToRoute(Route route) {
    _navigator.pushAndRemoveUntil<void>(route, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        buttonTheme: ButtonThemeData(
          buttonColor: Palette.primaryColor,
          textTheme: ButtonTextTheme.primary,
        ),
        canvasColor: Palette.backgroundColor,
        primaryColor: Palette.primaryColor,
        colorScheme: const ColorScheme.light(
          primary: Colors.black
        )
      ),
      navigatorKey: _navigatorKey,
      builder: (context, snapshot) {
        return const HomePage();
      },
      onGenerateRoute: (_) => MaterialPageRoute(builder: (context){
        return const SplashPage();
      })
    );
  }
}
