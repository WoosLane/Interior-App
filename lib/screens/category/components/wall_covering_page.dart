import 'package:flutter/material.dart';

class WallCoveringPage extends StatelessWidget {
  const WallCoveringPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1'),
      ),
      body: TextButton(
      child: Center(child: const Text('1')),
        onPressed: () {
          Navigator.pop(context);
        }
      )
    );
    }
  }

