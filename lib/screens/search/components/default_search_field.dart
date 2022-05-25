import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultSearchField extends StatefulWidget {
  const DefaultSearchField({Key? key}) : super(key: key);

  @override
  State<DefaultSearchField> createState() => _DefaultSearchFieldState();
}

class _DefaultSearchFieldState extends State<DefaultSearchField> {
  // FocusNode 클래스는 StatefulWidget 위젯에서 키보드의 focus 상태를 얻고
  // 키보드 이벤트를 처리하는 데 사용할 수 있는 개체임.
  final FocusNode _focusNode = FocusNode();
  // FocusNode 의 상태를 저장하기 위한 변수임.
  bool isFocus = false;

  @override
  void initState() {
    super.initState();
    // Flutter 에서 키보드를 해제하는 방법임. 키보드가 활성화된 상태에서 앱이 종료되거나 전화가 왔을 때처럼
    // TextFormField 의 focus 된 상태를 제거하고 사용하지 않는 FocusNode 를 제공해서 키보드를 종료할 수 있음.
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    // FocusNode 에 이벤트 리스너를 추가함.
    _focusNode.addListener(() {
      _onFocusChange();
    });
  }
  // FocusNode 에 이벤트 리스너가 동작할 때 실행시키는 함수를 만들어 줌.
  void _onFocusChange() {
    setState(() {
      isFocus = !isFocus;
    });
  }
  // Text(취소)를 사용자가 눌렀을 때 focus 된 상태를 제거하기 위한 함수를 만들어 줌.
  void _unFocus() {
    _focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            // 텍스트 필드 focusNode 속성에 우리가 만들었던 FocusNode 를 등록.
            focusNode: _focusNode,
            decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.grey[100],
              hintText: "검색어를 입력해 주세요",
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              )
            ),
          ),
        ),
        SizedBox(
          // 크기를 focus 된 상태에 따라 정의할 수 있음.
          width: isFocus ? 50 : 0,
          // 자식 위젯을 focus 된 상태에 따라 Text 위젯과 SizedBox 위젯을 만들어 줌.
          // Text 위젯에 GestureDetector 위젯을 감싸 onTap 속성에 _unFocus 함수를 연결함.
          child: isFocus ? Center(
            child: GestureDetector(
              onTap: _unFocus,
              child: const Text("취소", style: TextStyle(fontSize: 16),
              ),
            ),
          ) : const SizedBox(),
        )
      ],
    );
  }
}
