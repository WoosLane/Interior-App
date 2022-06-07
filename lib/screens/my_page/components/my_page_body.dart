import 'package:flutter/material.dart';
import 'package:untitled/models/text_menu.dart';
import 'package:untitled/screens/category/components/wall_covering_page.dart';
import 'package:untitled/screens/components/text_menu_card.dart';
import 'package:untitled/screens/my_page/components/my_page_header.dart';

class MyPageBody extends StatelessWidget {
  const MyPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyPageHeader(),
        buildPaddingTextMenuCard("내 신청서 보기", () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const WallCoveringPage()));
        }),
        SizedBox(
          height: 330,
          child: ListView.separated(
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context, index) => SizedBox(
              height: 55,
              child: TextMenuCard(
                title: textMenuList[index].text,
                icon: textMenuList[index].icon,
                press: () {},
              ),
            ),
            separatorBuilder: (context, index) => const Divider(
              height: 0,
            ),
            itemCount: textMenuList.length,
          ),
        ),
        buildPaddingTextMenuCard("설정", () {}),
      ],
    );
  }

  Padding buildPaddingTextMenuCard(String text, GestureTapCallback press) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: SizedBox(
        height: 55,
        child: TextMenuCard(
          title: text,
          icon: "assets/icons/right-arrow.svg",
          press: press,
          textColor: Colors.black,
        ),
      ),
    );
  }
}
