// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class BoxBorderText extends StatelessWidget {
//   const BoxBorderText({
//     Key? key,
//     required this.title,
//     required this.subTitle,
//   }) : super(key: key);
//
//   final String title;
//   final String subTitle;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         color: const Color.fromRGBO(0, 0, 0, 1),
//         borderRadius: BorderRadius.circular(20)
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             title,
//             style: GoogleFonts.nanumGothic(fontSize: 28, color: Colors.white)),
//           const SizedBox(height: 5),
//           Text(
//             subTitle,
//             style: GoogleFonts.nanumGothic(
//               fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }