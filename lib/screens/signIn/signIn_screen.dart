import 'package:flutter/material.dart';
import 'package:untitled/screens/signIn/components/interior_sign_form.dart';

class SignInScreen extends StatelessWidget {
  //Flutter 가 이 화면으 요청할 때 경로의 이름으로 사용됨.
  static String routeName = "/sign_in";

  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
            "로그인",
            style: TextStyle(color: Colors.black),
        ),
        //이전 화면으로 되돌아 가는 아이콘(화살표)을 자동으로 만들어줄 수 있음. 근데 false 로 해두고 직접 만듬.
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          //Navigator 객체의 pop 메서드를 이용해 화면을 종료.
          onPressed: () => Navigator.pop(context),
        ),
        bottom: const PreferredSize(
          child: Divider(),
          preferredSize: Size.fromHeight(1.0),
        ),
      ),
      body: const InteriorSignForm(),
    );
  }
}
