// import 'package:flutter/material.dart';
// import 'package:untitled/screens/components/product_item.dart';
// import '../../../models/product.dart';
//
// class CardProductItem extends StatelessWidget {
//   final Product item;
//
//   const CardProductItem({
//     Key? key,
//     required this.item
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // elevation 속성과 모서리의 라운드 효과 그리고 margin 속성을 사용하기 위해 Card 위젯을 사용.
//     return Card(
//       elevation: 1,
//       margin: const EdgeInsets.only(left: 16),
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           // Expanded 위젯은 ProductItem 위젯을 부모 위젯이 Column 인 것을 확인하고
//           // 형제 위젯 Container 위젯의 height 값을 제외하고 남은 공간만큼 세로 방향으로 확장 시킴.
//           // 하지만 CardProductItem 최상단 부모 위젯도 Card 위젯이기 때문에 현재 높이와 넓이의 크기 제약이 없음.
//           // 그래서 이 위젯을 사용하게 될 부모 위젯에서 높이와 넓이의 값을 지정해 주어야 정상적으로 위젯을 만들어 낼 수 있음.
//           Expanded(
//             child: ProductItem(
//               product: item,
//               lineChange: true,
//               textContainerHeight: 50,
//             ),
//           ),
//           // Container 위젯으로 텍스트가 표시될 height 값을 지정.
//           Container(
//             height: 80,
//             decoration: const BoxDecoration(
//               border: Border(
//                 top: BorderSide(width: 1.0, color: Color(0xFFF5F5F5)),
//               ),
//             ),
//             child: const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               child: Center(
//                 child: Text(
//                   "이렇게 치즈가 가득한 돈까스를 집에서 먹으니 좋네요."
//                   "에어프라이어에 돌리니 간편하고 맛있어요.",
//                   textAlign: TextAlign.center,
//                   // 글자의 최대 line 수를 2로 지정하고 이 위젯의 width 크기보다 글자가 넘칠 때
//                   // TextOverflow.ellipsis 속성을 사용.
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
