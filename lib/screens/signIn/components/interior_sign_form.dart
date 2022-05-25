import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/components/default_button.dart';
import 'package:untitled/screens/signIn/components/form_error.dart';

class InteriorSignForm extends StatefulWidget {
  const InteriorSignForm({Key? key}) : super(key: key);

  @override
  State<InteriorSignForm> createState() => _KurlySignFormState();
}

class _KurlySignFormState extends State<InteriorSignForm> {
  //GlobalKey 는 Form 태그 안에 연결 됨. Form 태그를 사용하는 이유는 Form 태그안에 있는 모든 입력받는 요소들에 있는 값들의 상태(값)을 관리하기 위해 사용 됨.
  //GlobalKey 를 통해서 모든 요소의 값을 한 번에 관리할 수 있음.
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  //우리가 미리 정의한 유효성 검사에 실패한 유형들을 담는 String 타입의 리스트 변수임.
  final List<String> errors = [];
  //사용자가 입력할 id 값을 담는 변수.
  String? id;
  //사용자가 입력한 password 값을 담을 변수.
  String? password;
  //id 를 입력하지 않았을 경우 유효성 검사에 실패한 유형.
  String kIdNull = "아이디를 입력해주세요";
  //password 를 입력하지 않았을 경우 실패한 유형.
  String kPasswordNull = "비밀번호를 입력해주세요";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //아이디를 입력받을 TextFormField 위젯을 메서드로 분리해서 만듬.
            _buildIdField(),
            const SizedBox(height: 12),
            //비밀번호를 입력받을 TextFormField 위젯을 메서드로 분리해서 만듬.
            _buildPasswordField(),
            const SizedBox(height: 20),
            DefaultButton(
              text: "로그인",
              press: () {
                //form 의 유효성을 검사하는 부분.
                if (_formKey.currentState!.validate() && errors.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('유효성 검사 확인')
                    )
                  );
                }
              },
            ),
            const SizedBox(height: 10),
            //유효성 검사에 실패한 항목을 위젯으로 만들어 표시함.
            FormError(errors: errors)
          ],
        ),
      ),
    );
  }
  //테두리가 있는 TextFormField 를 만들기 위해 OutlineInputBorder 객체를 사용.
  OutlineInputBorder outlineInputBorder(Color color) {
    return OutlineInputBorder(borderSide: BorderSide(color: color, width: 1));
  }
  //아이디를 입력받는 TextFormField 위젯.
  TextFormField _buildIdField() {
    return TextFormField(
      onSaved: (newValue) => id = newValue,
      onChanged: (value) {
        if (value.isNotEmpty & errors.contains(kIdNull)) {
          setState(() {
            errors.remove(kIdNull);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty & !errors.contains(kIdNull)) {
          setState(() {
            errors.add(kIdNull);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        border: outlineInputBorder(kTextColor),
        focusedBorder: outlineInputBorder(kPrimaryColor),
        errorBorder: outlineInputBorder(kPrimaryColor),
        disabledBorder: InputBorder.none,
        contentPadding: const EdgeInsets.only(left: 16, top: 15, bottom: 15),
        filled: true,
        fillColor: Colors.white,
        hintStyle: TextStyle(color: Colors.grey[400], fontSize: 18),
        hintText: kIdNull,
      ),
    );
  }
  //비밀번호 입력받는 TextFormField 위젯.
  TextFormField _buildPasswordField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty & errors.contains(kPasswordNull)) {
          setState(() {
            errors.remove(kPasswordNull);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty & !errors.contains(kPasswordNull)) {
          setState(() {
            errors.add(kPasswordNull);
          });
        }
      },
      decoration: InputDecoration(
        border: outlineInputBorder(kTextColor),
        focusedBorder: outlineInputBorder(kPrimaryColor),
        errorBorder: outlineInputBorder(kPrimaryColor),
        disabledBorder: InputBorder.none,
        contentPadding: const EdgeInsets.only(left: 16, top: 15, bottom: 15),
        filled: true,
        fillColor: Colors.white,
        hintStyle: TextStyle(color: Colors.grey[400], fontSize: 18),
        hintText: kPasswordNull,
      ),
    );
  }
}
