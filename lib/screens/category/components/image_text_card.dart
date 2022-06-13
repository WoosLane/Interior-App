import 'package:flutter/material.dart';
import 'package:untitled/models/grid_category_menu.dart';
import 'categories/wall_covering_page.dart';

class ImageTextCard extends StatelessWidget {
  final GridCategoryMenu item;

  const ImageTextCard({
    Key? key,
    required this.item
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // 여기에 디테일 스크린 비슷하게 만들어서 누르면 해당 카테고리 화면으로 넘어가게 만들기.
      onTap: () {
        Navigator.pushNamed(
          context,
          WallCoveringPage.routeName,
        );
      },
      child: Card(
        shadowColor: Colors.black,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        // Card 위젯의 기본 margin 값을 0으로 처리.
        margin: EdgeInsets.zero,
        child: Column(
          children: [
            // 이미지 영역으로 표시할 부분에 Expanded 위젯의 flex 속성을 3으로 정의함.
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                  image: DecorationImage(
                    image: AssetImage(item.image),
                    fit: BoxFit.cover,
                  )
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    item.title,
                    style: const TextStyle(fontSize: 13),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
