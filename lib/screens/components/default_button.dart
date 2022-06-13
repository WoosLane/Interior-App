import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/theme.dart';

class DefaultButton extends StatelessWidget {

  final String? text;
  final GestureTapCallback? press;
  final Color color;

  const DefaultButton(
   {Key? key,
    this.text,
    this.press,
    this.color = kPrimaryColor
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: const EdgeInsets.all(16),
      ),
      onPressed: press,
        child: Center(
          child: Text(
            text ?? "",
            style: textTheme().subtitle1,
          ),
        ),
    );
  }
}
