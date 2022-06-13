import 'package:flutter/material.dart';



// 카테고리 클릭해서 들어오면 그 카테고리에 해당하는 신청서들 모아둔 페이지 뜨게 할거임.
// Application 관련된거 새로 파일 만들어서 바꿔 넣어주면 될듯.



class WallCoveringPage extends StatelessWidget {
  static String routeName = "/categories";

  const WallCoveringPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('1'),
      ),
    );
  }
}