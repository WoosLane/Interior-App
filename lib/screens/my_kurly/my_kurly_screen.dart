import 'package:flutter/material.dart';
import 'package:untitled/screens/components/custom_actions.dart';

class MyKurlyScreen extends StatelessWidget {
  const MyKurlyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("마이컬리"),
        actions: const [CustomActions()],
      ),
    );
  }
}
