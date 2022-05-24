import 'package:flutter/material.dart';
import 'package:untitled/theme.dart';

class ProductFilterButton extends StatefulWidget {
  const ProductFilterButton({Key? key}) : super(key: key);

  @override
  State<ProductFilterButton> createState() => _ProductFilterButtonState();
}

class _ProductFilterButtonState extends State<ProductFilterButton> {
  // PopupMenuButton 의 초깃값.
  String _selectedUItem = '신상품순';
  // 메뉴로 사용할 목록.
  final List _options = ['신상품순', '인기순', '혜택순'];

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      padding: EdgeInsets.zero,
      offset: const Offset(0, 0),
      icon: Align(
        alignment: Alignment.bottomRight,
        child: TextButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(_selectedUItem, style: textTheme().bodyText2?.copyWith(color: Colors.black)),
              const Icon(Icons.arrow_drop_down, color: Colors.black),
            ],
          ),
          onPressed: null,
        ),
      ),

      onSelected: (value) {
        setState(() {
          _selectedUItem = value.toString();
        });
      },
      itemBuilder: (BuildContext context) {
        // 리스트의 map 함수를 사용해서 리스트의 값을 하나씩 꺼내 PopupMenuItem 위젯을 생성하고 반환해 줌.
        return _options
            .map((option) => PopupMenuItem(
               child: Text("$option", style: textTheme().bodyText2),
               value: option,
              ))
            .toList();
      },
    );
  }
}
