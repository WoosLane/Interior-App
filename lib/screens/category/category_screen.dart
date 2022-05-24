import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/components/custom_actions.dart';
import 'package:untitled/screens/components/text_menu_card.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("카테고리"),
        actions: const [CustomActions()],
        automaticallyImplyLeading: false,
      ),
      body: CustomScrollView(
        slivers: [
          // slivers 안에 패딩을 줄 때 SliverPadding 사용해야 함. 상단과 하단에 패딩을 주기 위해 사용함.
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            // CustomScrollView 안에 단일 위젯을 생성할 때는 SliverToBoxAdapter 위젯을 사용하는 것이 좋음.
            sliver: SliverToBoxAdapter(
              child: SizedBox(
                // 자식 위젯(TextMenuCard) 의 크기를 제한함.
                height: 60,
                // 우리가 만들었던 TextMenuCard 위젯을 활용하고 속성들의 값을 지정함.
                child: TextMenuCard(
                  title: "자주 사는 상품",
                  icon: "assets/icons/right-arrow.svg",
                  textColor: kPrimaryColor,
                  iconColor: kPrimaryColor,
                  press: () {},
                ),
              ),
            ),
          ),
          //SliverList
          //SliverGrid
        ],
      ),
    );
  }
}
