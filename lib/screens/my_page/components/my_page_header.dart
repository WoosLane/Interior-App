import 'package:flutter/material.dart';
import 'package:untitled/screens/components/default_button.dart';
import 'package:untitled/screens/signIn/signIn_screen.dart';

class MyPageHeader extends StatelessWidget {
  const MyPageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SizedBox(
        height: 250,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(),
            const SizedBox(
              width: 250,
              child: Text(
                "회원 가입하고\n 다양한 혜택을 받아보세요!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "가입 혜택 보기 >",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: DefaultButton(
                text: "로그인/회원가입",
                press: () {
                  //Navigator 객체의 pushNamed 메서드를 이용해 화면 이동 기능을 만듬.
                  Navigator.pushNamed(context, SignInScreen.routeName);
                },
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
