import 'package:flutter/material.dart';
import 'package:untitled/screens/category/components/categories/wall_covering_page.dart';
import 'package:untitled/screens/details/details_screen.dart';
import 'package:untitled/screens/signIn/signIn_screen.dart';
import 'screens/main_screens.dart';

final Map<String, WidgetBuilder> route = {
  MainScreens.routeName: (context) => const MainScreens(),
  SignInScreen.routeName: (context) => const SignInScreen(), //SignInScreen 경로명 등록.
  DetailScreen.routeName: (context) =>  const DetailScreen(),
  WallCoveringPage.routeName: (context) => const WallCoveringPage(),
};