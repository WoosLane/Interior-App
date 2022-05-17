import 'package:flutter/material.dart';
import 'package:untitled/screens/signIn/signIn_screen.dart';
import 'screens/main_screens.dart';
import 'screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> route = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  MainScreens.routeName: (context) => const MainScreens(),
  SignInScreen.routeName: (context) => const SignInScreen(), //SignInScreen 경로명 등록.
};