// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SmallBox extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final Color bg;
  final Color textColor;
  final bool isBorderRadios;
  final bool isIcon;
  final IconData icon;

  const SmallBox({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
    required this.bg,
    required this.textColor,
    this.isBorderRadios = false,
    this.isIcon = false,
    this.icon = Icons.arrow_forward_outlined,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: isBorderRadios ? BorderRadius.circular(10) : null,
      ),
      child: isIcon
          ? Icon(
              icon,
              color: Colors.white,
            )
          : Text(
              text,
              style: TextStyle(
                color: textColor,
              ),
            ),
    );
  }
}
