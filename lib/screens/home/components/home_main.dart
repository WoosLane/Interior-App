import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/components/application.dart';
import 'package:untitled/screens/components/product_item.dart';
import 'package:untitled/screens/home/components/product_filter_button.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<List<Application>> applicationList = fetchData();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      // CustomScrollView 사용하면 슬라이더를 직접 제공하여 목록, 그리드 및 확장 헤더와 같은
      // 다양한 스크롤 효과를 생성할 수 있음.
      child: CustomScrollView(
        slivers: [
          // CupertinoSliverRefreshControl 위젯은 콘텐츠 컨트롤을 새로 고치기 위해
          // iOS 스타일의 끌어 오기를 구현하는 위젯임.
          // 안드로이드 폰에서는 동작 x.
          CupertinoSliverRefreshControl(
            onRefresh: () {
              return Future<void>.delayed(const Duration(seconds: 1));
            },
          ),
          // CustomScrollView 와 통합되는 머티리얼 디자인 앱 바임.
          // 앱이 스크롤 될 때마다 형태를 바꾸거나 사라지는 효과를 만들 때 사용할 수 있음.
          const SliverAppBar(
            elevation: 0.0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            titleSpacing: 0,
            actions: [
              SizedBox(
                child: ProductFilterButton(),
                width: 100,
              )
            ],
          ),
          // 한 화면에 리스트 뷰와 그리드 뷰만 있다면 각 항목당 개별적으로 스크롤만 가능.
          // 다 같이 스크롤 하고 싶거나 더 복잡한 스크롤 뷰 효과를 만들고 싶을 때
          // 슬리버 리스트와 슬리버 그리드를 사용하면 됨.
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              // 그리드 뷰에 들어올 하나의 항목에 최대 크기를 지정하고 이 값에 따라 교차 축의 범위를 균등하게 나눔.
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 30.0,
              crossAxisSpacing: 8.0,
              childAspectRatio: 0.6,
            ),
            delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  // ProductItem 위젯을 Stack 위젯으로 감싸 위젯을 더 추가해서 꾸밀 수 있음.
                  return FutureBuilder<List<Application>>(
                      future: applicationList,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          List<Application> userList = snapshot.data ?? [];
                          return ProductItem(
                            application: userList[index],
                          );
                        } else if (snapshot.hasError) {
                          return Text("${snapshot.error}");
                        }
                        return const Center(child: CircularProgressIndicator());
                      }
                  );
                },
                // 자식의 위젯의 총 개수임.
                childCount: applicationLength,
            ),
          )
        ],
      ),
    );
  }
}
