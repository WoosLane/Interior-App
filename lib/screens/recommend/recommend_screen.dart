import 'package:flutter/material.dart';
import 'package:untitled/screens/recommend/components/card_product_item.dart';
import 'package:untitled/screens/recommend/components/stack_product_item.dart';
import 'package:untitled/theme.dart';

import '../../models/product.dart';

class RecommendScreen extends StatelessWidget {
  const RecommendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("추천"),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "베이커리 인기 급상승 랭킹",
              style: textTheme().headline1,
            ),
          ),
          const SizedBox(height: 15),
          // 수평 방향으로 스크롤 되는 영역의 높이 크기를 지정함.
          SizedBox(
            height: 270,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => StackProductItem(
                  item: productList[index],
                  width: 160,
                  number: index + 1
              ),
              itemCount: productList.length,
            )
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text("후기가 좋은 상품", style: textTheme().headline1,),
          ),
          const SizedBox(height: 15),
          // SizedBox 위젯을 사용해도 되지만 color 속성을 사용하기 위해 Container 위젯을 사용함.
          SizedBox(
            height: 360,
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 40),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => SizedBox(
                width: 320,
                child: CardProductItem(
                  item: productList[index],
                ),
              ),
              itemCount: productList.length,
            )
          )
        ],
      ),
    );
  }
}
