import 'package:flutter/material.dart';
import 'package:untitled/screens/category/category_screen.dart';
import 'package:untitled/screens/home/home_screen.dart';
import 'package:untitled/screens/my_page/my_page_screen.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({Key? key}) : super(key: key);

  static String routeName = "/main_screens";

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {

    int _selectedIndex = 0; //현재 선택된 IndexedStack 위젯의 자식 index 를 저장하는 변수를 선언.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomeScreen(),
          //RecommendScreen(),
          CategoryScreen(),
          //SearchScreen(),
          MyPageScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        onTap: onTaped,
        //nav_item.dart 파일에서 만든 데이터 navItems 개수만큼 반복문을 돌면서 _buildBottomNavigationBarItem() 메서드를 호출.
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded), label: '카테고리'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: '내정보'),
        ],
      ),
    );
  }

  void onTaped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
