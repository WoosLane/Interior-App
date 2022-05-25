import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';
import '../main_screens.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  "Interior",
                  style: GoogleFonts.pacifico(fontSize: 28, color: Colors.white),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: TextButton(
                  child: const Text("Continue"),
                  onPressed: () {
                    _completeSplash(context, const MainScreens()); //Continue 버튼을 누르면 _completeSplash 메서드를 실행.
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _completeSplash(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (BuildContext context) => widget)
    ); //Navigator.pushReplacement 메서드는 이전 경로를 없애 주면서 새로운 화면으로 이동. 쉽게 말해 뒤로 가기 버튼을 눌러도 이전에 있던 화면은 안 나옴.
  }
}
