import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/components/custom_actions.dart';
import 'package:untitled/screens/home/components/benefit_page.dart';
import 'package:untitled/screens/home/components/home_recommend_page.dart';
import 'package:untitled/screens/home/components/new_product_page.dart';
import 'package:untitled/screens/home/components/thrifty_shopping_page.dart';
import 'package:untitled/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("인테리어"),actions: const [CustomActions()],
        ),
        body: const NewProductPage(),
    );
  }
    //사용될 탭의 목록.
    //List<String> categories = ["추천", "신상품", "금주혜택", "알뜰쇼핑"];
    //DefaultTabController 는 TabBar 또는 TabBarView 와 TabController 를 공유하는 데 사용되는 상속된 위젯임.
  //   return DefaultTabController(
  //     //선택된 초기 색인.
  //     initialIndex: 0,
  //     //총 탭의 수.
  //     length: categories.length,
  //     child: Scaffold(
  //       appBar: AppBar(
  //         automaticallyImplyLeading: false,
  //         title: const Text("인테리어"),
  //         actions: const [CustomActions()],
  //         bottom: PreferredSize(
  //           child: Container(
  //             decoration: const BoxDecoration(
  //               border: Border(
  //                 bottom: BorderSide(width: 0.3, color: Colors.grey),
  //               ),
  //               color: Colors.white
  //             ),
  //             child: TabBar(
  //               tabs: List.generate(
  //                   categories.length,
  //                   (index) => Tab(text: categories[index]
  //                   )
  //               ),
  //               //선택된 탭의 색상.
  //               labelColor: kPrimaryColor,
  //               //선택되지 않은 탭의 색상.
  //               unselectedLabelColor: kSecondaryColor,
  //               labelStyle: textTheme().headline2?.copyWith(
  //                 color: kPrimaryColor, fontWeight: FontWeight.bold
  //               ),
  //               //선택한 탭 아래에 표시되는 선.
  //               indicator: const UnderlineTabIndicator(
  //                 borderSide: BorderSide(width: 2, color: kPrimaryColor)
  //               ),
  //             ),
  //           ),
  //           preferredSize: const Size.fromHeight(42),
  //         ),
  //       ),
  //       //body 의 탭 바 뷰를 생성. DefaultTabController 위젯의 length 속성과 길이가 같아야 오류가 안남.
  //       body: const TabBarView(
  //         children: [
  //           HomeRecommendPage(),
  //           NewProductPage(),
  //           BenefitPage(),
  //           ThriftyShoppingPage(),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
