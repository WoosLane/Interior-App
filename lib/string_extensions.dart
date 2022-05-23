import 'package:intl/intl.dart';

// 확장 메서드 이름을 StringExtension 으로 하고 String 객체를 확장하겠다는 의미.
extension StringExtension on String {
  String numberFormat() {
    // 문자열의 형태를 천 단위에 콤마를 표시하는 형식으로 지정.
    final formatter = NumberFormat("#,###");
    return formatter.format(int.parse(this));
  }
}


// 얘를 다른 dart 파일에 import 해주면 숫자를 출력할 때 #,### 형태로 바뀌어서 출력 됨.
// import 는 수동으로 해줘야함.