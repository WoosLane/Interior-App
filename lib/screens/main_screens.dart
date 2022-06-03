import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/models/nav_item.dart';
import 'package:untitled/screens/category/category_screen.dart';
import 'package:untitled/screens/home/home_screen.dart';
import 'package:untitled/screens/my_page/my_page_screen.dart';
import 'package:untitled/screens/recommend/recommend_screen.dart';
import 'package:untitled/screens/search/search_screen.dart';

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
        items: List.generate(
            navItems.length,
            (index) => _buildBottomNavigationBarItem(
              icon: navItems[index].icon,
              label: navItems[index].label,
              //현재 선택한 BottomNavigationBarItem 인덱스 번호와 NavItem 객체의 id 값이 같으면 true 리턴.
              isActive: navItems[index].id == _selectedIndex ? true : false,
            )),
      ),
    );
  }

  void onTaped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _buildBottomNavigationBarItem(
      {String? icon,
        String? label,
        bool isActive = false,
        GestureTapCallback? press}) {
    return BottomNavigationBarItem(
      icon: SizedBox(
          width: 38,
          height: 38,
          child: IconButton(
            onPressed: press,
            //icon 이 null 이면 "assets/icons/star.svg 파일로 대체 한다.
            icon: SvgPicture.asset(icon ?? "assets/icons/star.svg",
                color: isActive ? kPrimaryColor: Colors.black),
          ),
      ),
      label: label,
    );
  }
}
