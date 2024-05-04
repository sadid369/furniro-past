// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:furniro/common/utils/app_colors.dart';

import 'package:furniro/common/utils/constants.dart';

class AppButtonGolden extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final VoidCallback onTap;
  const AppButtonGolden({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.goldenB88E2F,
        ),
        width: width,
        height: height,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
