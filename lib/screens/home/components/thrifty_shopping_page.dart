import 'package:flutter/material.dart';
import 'package:untitled/screens/components/product_item.dart';
import 'package:untitled/screens/home/components/circle_container.dart';
import 'package:untitled/screens/home/components/product_filter_button.dart';

import '../../../models/product.dart';

class ThriftyShoppingPage extends StatelessWidget {
  const ThriftyShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // 단일 위젯의 경우 SliverToBoxAdapter 를 사용하는 것이 좋음.
        // 여긴 여러 개의 자식 상자(위젯)을 만들 때 사용하는 SliverList 사용.
        SliverList(
          delegate: SliverChildListDelegate(
            [
              SizedBox(
                height: 120,
                child: Image.asset(
                  "assets/images/kurly_banner_1.jpg",
                  fit: BoxFit.fitWidth,
                ),
              ),
              const Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  child: ProductFilterButton(),
                  width: 100,
                ),
              )
            ],
          ),
        ),
        // 다른 Sliver 위젯의 측면에 패딩을 적용하는 Sliver 임.
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 30.0,
              crossAxisSpacing: 8.0,
              childAspectRatio: 0.6,
            ),
            delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Stack(
                    children: [
                      ProductItem(
                        product: productList[index],
                      ),
                      const Positioned(
                        bottom: 90,
                        right: 10,
                        child: CircleContainer(
                          iconPath: 'assets/icons/shopping-cart.svg',
                        ),
                      )
                    ],
                  );
                },
              childCount: productList.length,
            ),
          ),
        )
      ],
    );
  }
}
