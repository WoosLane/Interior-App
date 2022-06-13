import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/models/product_details_arguments.dart';
import 'package:untitled/theme.dart';
import '../details/details_screen.dart';
import 'application.dart';

class ProductItem extends StatelessWidget {
  final Application application;
  final bool? lineChange;
  final double? textContainerHeight;

  const ProductItem({
    Key? key,
    required this.application,
    this.lineChange = false,
    this.textContainerHeight = 80,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // 이미지 파일임. 중요한 부분은 Expanded 로 감싸고 세로의 크기는 사용하는 부모 위젯에서 결정함.
        Expanded(
          child: InkWell(
            onTap: () {
              // Navigator 객체의 arguments 속성을 이용해 객체를 전달할 수 있음. (객체 전달하기)
              Navigator.pushNamed(
                  context,
                  DetailScreen.routeName,
                  arguments: ProductDetailsArguments(application: application)
              );
            },
            // child: Image.network(
            //   product.imageUrl ?? "assets/images/kurly_banner_0.jpg",
            //   fit: BoxFit.cover,
            // ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kPrimaryColor,
              ),
              height: textContainerHeight,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: "주소: ${application.location} ${lineChange == true ? "\n" : ""}\n",
                            style: textTheme().subtitle1?.copyWith(color: Colors.white),
                        ),
                        TextSpan(
                          text: '\n필요직군: ${application.jobGroup}\n',
                          style: textTheme().headline2?.copyWith(color: Colors.red),
                        ),
                        TextSpan(
                            text: '\n시작일: ${application.startDate}\n',
                            style: textTheme().bodyText2?.copyWith(color: Colors.white)
                        ),
                        TextSpan(
                            text: '종료일: ${application.endDate}',
                            style: textTheme().bodyText2?.copyWith(color: Colors.white)
                        )
                      ],
                    )
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
