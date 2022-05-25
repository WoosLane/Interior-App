import 'package:flutter/material.dart';
import 'routes.dart';
import 'screens/splash/splash_screen.dart';
import 'theme.dart';

void main() {
  runApp(const Interior());
}

class Interior extends StatelessWidget {
  const Interior({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "인테리어",
      initialRoute: SplashScreen.routeName, //앱 첫 화면 지정
      routes: route, //Flutter 에 Navigation 화면들을 등록하는 부분. routes.dart 파일에서 만든 map<String, WidgetBuilder> 자료형 변수 route 입력.
      theme: theme(), //theme.dart 파일에서 정의한 ThemeData 객체 등록.
    );
  }
}
