import 'package:flutter/material.dart';
import 'package:untitled/models/product.dart';
import 'package:untitled/screens/components/product_item.dart';
import 'package:untitled/screens/home/components/kurly_banner_item.dart';
import 'package:untitled/theme.dart';

class KurlyRecommendPage extends StatelessWidget {
  const KurlyRecommendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // KurlyBannerItem 위젯은 높이 값을 지정하지 않음. 부모 위젯 SizedBox 에 높이 값을 335로 지정.
        const SizedBox(
          height: 335,
            child: KurlyBannerItem(),
        ),
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 16),
          child: Text("이 상품 어때요?", style: textTheme().headline1),
        ),
        // 가로 방향으로 스크롤 되는 ListView.builder 을 이용해 우리가 만든 ProductItem 위젯을 생성.
        // 당연히 가로 방향으로 스크롤 되는 세로 높이가 있어야 하기 때문에 SizedBox 위젯으로 높이를 지정해 줌.
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: productList.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SizedBox(
                width: 150,
                child: ProductItem(
                  product: productList[index],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
