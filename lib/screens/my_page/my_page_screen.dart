import 'package:flutter/material.dart';
import 'package:untitled/screens/my_page/components/my_page_body.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        toolbarHeight: 50,
        automaticallyImplyLeading: false,
        title: const Text("내 정보"),
      ),
      body: const SingleChildScrollView(
        child: MyPageBody(),
      ),
    );
  }
}
