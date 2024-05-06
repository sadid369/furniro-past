// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:furniro/common/utils/app_colors.dart';

class AppButtonWhite extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final VoidCallback onTap;
  final bool border;
  const AppButtonWhite({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
    required this.onTap,
    this.border = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: border
                ? Border.all(color: AppColors.goldenB88E2F, width: 2)
                : null),
        width: width,
        height: height,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: AppColors.goldenB88E2F,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
