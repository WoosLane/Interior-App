import 'package:flutter/material.dart';
import 'package:untitled/models/grid_category_menu.dart';
import 'package:untitled/screens/category/components/image_text_card.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        title: const Text("카테고리"),
        automaticallyImplyLeading: false,
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(5),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 15.0,
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
