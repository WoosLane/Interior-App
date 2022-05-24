import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/models/product_details_arguments.dart';
import 'package:untitled/screens/components/default_button.dart';
import 'package:untitled/theme.dart';
import '../../models/product.dart';
import 'components/body.dart';

class DetailScreen extends StatelessWidget {
  // routes.dart 파일에 등록할 화면의 경로 이름임.
  static String routeName = "/details";

  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 화면이 갱신될 때, 즉 build 메서드가 호출될 때 ModalRoute 객체를 이용해서
    // arguments 속성을 받을 수 있음.
    // arguments 의 타입이 Object? 이기 때문에 사용하기 위해서는
    // ProductDetailsArguments 객체로 데이터의 자료형을 변환해 주어야 함.
    // flutter 에서는 as 키워드로 형 변환할 수 있음.
    final arguments = ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "${arguments.product.title}",
          style: textTheme().subtitle1?.copyWith(color: Colors.black),
        ),
      ),
      // Body 위젯 안에 arguments 로 전달받은 product 객체를 넘겨줌.
      body: Body(
        product: arguments.product,
      ),
      // SafeArea 는 하단에 노치 영역과 위젯 사이에 충분한 패딩을 주기 위해 사용함.
      bottomNavigationBar: SafeArea(
        // Column 은 bottomNavigationBar 크기에 제약을 주기 위해 사용함.
        // Column 이 없다면 bottomNavigationBar 영역이 화면을 꽉 채우게 됨.
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 위젯의 양쪽에 패딩 추가.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              // 만들었던 DefaultButton 위젯 사용.
              child: DefaultButton(
                text: "구매하기",
                color: kPrimaryColor,
                press: () {},
              )
            )
          ],
        ),
      ),
    );
  }
}
