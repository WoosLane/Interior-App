import 'package:flutter/material.dart';
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
                  //arguments: ProductDetailsArguments(product: product)
              );
            },
            // child: Image.network(
            //   product.imageUrl ?? "assets/images/kurly_banner_0.jpg",
            //   fit: BoxFit.cover,
            // ),
            child: SizedBox(
              height: textContainerHeight,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: "${application.location} ${lineChange == true ? "\n" : ""}",
                            style: textTheme().subtitle1
                        ),
                        TextSpan(
                          text: application.jobGroup,
                          style: textTheme().headline2?.copyWith(color: Colors.red),
                        ),
                        TextSpan(
                            text: application.startDate,
                            style: textTheme().bodyText2?.copyWith(
                                decoration: TextDecoration.lineThrough
                            )
                        ),
                        TextSpan(
                            text: application.endDate,
                            style: textTheme().bodyText2?.copyWith(
                                decoration: TextDecoration.lineThrough
                            )
                        )
                      ],
                    )
                ),
              ),
            ),
          ),
        ),
        // Text.rich 위젯을 이용하여 문단별로 글자 스타일을 추가함.
        // 글자가 들어가는 부분은 기본 높이 값을 80으로 지정하고
        // 상황에 따라 부모 위젯에서 지정할 수 있도록 변수를 추가함.
        // SizedBox(
        //   height: textContainerHeight,
        //   width: double.infinity,
        //   child: Padding(
        //     padding: const EdgeInsets.only(top: 8),
        //     child: Text.rich(
        //       TextSpan(
        //         children: [
        //           TextSpan(
        //             text: "${product.title} ${lineChange == true ? "\n" : ""}",
        //             style: textTheme().subtitle1
        //           ),
        //           TextSpan(
        //             text: "${product.discount}%",
        //             style: textTheme().headline2?.copyWith(color: Colors.red),
        //           ),
        //           TextSpan(
        //             text: discountPrice(
        //               product.price ?? 0, product.discount ?? 0
        //             ),
        //             style: textTheme().headline2,
        //           ),
        //           // extension method numberFormat() 함수를 사용함.
        //           TextSpan(
        //             text: "${product.price.toString().numberFormat()}원",
        //             style: textTheme().bodyText2?.copyWith(
        //                 decoration: TextDecoration.lineThrough
        //             )
        //           )
        //         ],
        //       )
        //     ),
        //   ),
        // )
      ],
    );
  }
  // 할인율에 따라 가격이 계산되는 함수.
  // String discountPrice(int price, int discount) {
  //   double discountRate = ((100 - discount) / 100);
  //   int discountPrice = (price * discountRate).toInt();
  //   return "${discountPrice.toString().numberFormat()}원 ";
  // }
}

//
// body: FutureBuilder<List<Home>>(
// future: homeList,
// builder: (context, snapshot) {
// if (snapshot.hasData) {
// List<Home> userList = snapshot.data ?? [];
// return ListView(
// children: [
// ...List.generate(
// homeLength,
// (index) => Padding(
// padding: const EdgeInsets.only(bottom: 8.0),
// child: HomeBody(
// home: userList[index]
// ),
// )
// )
// ],
// );
// } else if (snapshot.hasError) {
// return Text("${snapshot.error}");
// }
// return const CircularProgressIndicator();
//
// }
// ),