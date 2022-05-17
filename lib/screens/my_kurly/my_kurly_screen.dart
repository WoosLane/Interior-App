import 'package:flutter/material.dart';
import 'package:untitled/screens/components/custom_actions.dart';
import 'package:untitled/screens/my_kurly/components/my_kurly_body.dart';

class MyKurlyScreen extends StatelessWidget {
  const MyKurlyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("마이컬리"),
        actions: const [
          CustomActions()
        ],
      ),
      body: const SingleChildScrollView(
        child: MyKurlyBody(),
      ),
    );
  }
}
