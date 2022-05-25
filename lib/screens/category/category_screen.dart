import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/models/grid_category_menu.dart';
import 'package:untitled/models/list_category_menu.dart';
import 'package:untitled/screens/category/components/extends_icon_text_card.dart';
import 'package:untitled/screens/category/components/image_text_card.dart';
import 'package:untitled/screens/components/custom_actions.dart';
import 'package:untitled/screens/components/text_menu_card.dart';
import 'package:untitled/theme.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("카테고리"),
        actions: const [CustomActions()],
        automaticallyImplyLeading: false,
      ),
      body: CustomScrollView(
        slivers: [
          // CustomScrollView 안에 단일 위젯을 생성할 때는 SliverToBoxAdapter 위젯을 사용하는 것이 좋음.
          SliverToBoxAdapter(
            child: Divider(height: 12, color: Colors.grey[200], thickness: 12),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              // 자식 위젯(TextMenuCard) 의 크기를 제한함.
              height: 55,
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
          SliverToBoxAdapter(
            child: Divider(height: 12, color: Colors.grey[200], thickness: 12),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                  listCategoryMenuList.length,
                  (index) => ExtendsIconTextCard(
                      item: listCategoryMenuList[index]
                  )
              )
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(height: 12, color: Colors.grey[200], thickness: 12),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(20, 40, 0, 20),
            sliver: SliverToBoxAdapter(
              child: Text(
                "컬리의 추천",
                style: textTheme().headline2,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 40),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return ImageTextCard(
                      item: gridCategoryMenuList[index],
                    );
                  },
                  childCount: gridCategoryMenuList.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
