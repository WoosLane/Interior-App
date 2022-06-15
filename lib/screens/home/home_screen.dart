import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/home/components/my_application_page.dart';
import 'package:untitled/screens/home/components/home_main.dart';
import 'package:untitled/theme.dart';
import 'components/submit_application_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //사용될 탭의 목록.
    List<String> homeTabs = ["홈", "내 신청서"];
    // DefaultTabController 는 TabBar 또는 TabBarView 와 TabController 를 공유하는 데 사용되는 상속된 위젯임.
    return DefaultTabController(
      //선택된 초기 색인.
      initialIndex: 0,
      //총 탭의 수.
      length: homeTabs.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("인테리어"),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SubmitApplicationPage()),
                );

              },
              icon: const Icon(CupertinoIcons.add)
            )
          ],
          bottom: PreferredSize(
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 0.3, color: Colors.grey),
                ),
                color: Colors.white
              ),
              child: TabBar(
                tabs: List.generate(
                    homeTabs.length,
                    (index) => Tab(text: homeTabs[index])
                ),
                //선택된 탭의 색상.
                labelColor: kPrimaryColor,
                //선택되지 않은 탭의 색상.
                unselectedLabelColor: kSecondaryColor,
                labelStyle: textTheme().headline2?.copyWith(
                  color: kPrimaryColor, fontWeight: FontWeight.bold
                ),
                //선택한 탭 아래에 표시되는 선.
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(width: 2, color: kPrimaryColor)
                ),
              ),
            ),
            preferredSize: const Size.fromHeight(42),
          ),
        ),
        //body 의 탭 바 뷰를 생성. DefaultTabController 위젯의 length 속성과 길이가 같아야 오류가 안남.
        body: const TabBarView(
          children: [
            HomeMain(),
            MyApplicationPage(),
          ],
        ),
      ),
    );
  }
}
