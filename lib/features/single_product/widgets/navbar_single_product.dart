import 'package:flutter/material.dart';
import 'package:furniro/common/utils/app_colors.dart';
import 'package:furniro/common/utils/constants.dart';

class NavbarSingleProduct extends StatelessWidget {
  const NavbarSingleProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60),
      width: w,
      height: 70,
      decoration: BoxDecoration(
        color: AppColors.goldenF9F1E7,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Home',
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 13,
                ),
                const SizedBox(
                  width: 25,
                ),
                Text('Shop'),
                const SizedBox(
                  width: 25,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 13,
                ),
                const SizedBox(
                  width: 25,
                ),
                Text('|'),
                const SizedBox(
                  width: 25,
                ),
                Text(
                  'Asgaard sofa',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
