import 'package:flutter/material.dart';
import 'package:untitled/models/home_banner.dart';
import 'package:untitled/screens/home/components/box_border_text.dart';
import 'package:untitled/screens/home/components/number_indicator.dart';

class KurlyBannerItem extends StatefulWidget {
  const KurlyBannerItem({Key? key}) : super(key: key);

  @override
  State<KurlyBannerItem> createState() => _KurlyBannerItemState();
}

class _KurlyBannerItemState extends State<KurlyBannerItem> {
  //lib/model/home_banner_text  파일에서 만든 샘플 데이터.
  final List<HomeBanner> list = homeBannerList;
  //현재 페이지 뷰 색인을 저장하는 변수.
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                //Container 위젯에 BoxDecoration 위젯을 이용하여 배경을 이미지 파일로 꾸밈.
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(list[index].bannerImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //Positioned 위젯을 이용해서 BoxBorderText 위젯의 위치를 지정함.
                Positioned(
                  top: 50,
                  left: 16,
                  child: BoxBorderText(
                    title: list[index].eventTitle,
                    subTitle: list[index].eventContent,
                  )
                )
              ],
            );
          },
          //페이지 뷰의 인덱스가 변경될 때 currentPage 변수에 index 번호를 저장한다.
          onPageChanged: (value) {
            setState(() {
              currentPage = value;
            });
          },
        ),
        // Positioned 위젯을 이용해서 NumberIndicator 위젯의 위치를 지정하고,
        // index 번호는 0부터 시작하기 때운에 1을 더해준다.
        Positioned(
          bottom: 16,
          right: 16,
          child: NumberIndicator(
            currentPage: currentPage +1,
            length: list.length,
          ),
        ),
      ],
    );
  }
}
