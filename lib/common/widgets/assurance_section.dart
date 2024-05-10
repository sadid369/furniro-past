// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:furniro/common/utils/app_colors.dart';
import 'package:furniro/common/utils/app_image.dart';
import 'package:furniro/common/utils/constants.dart';

class AssuranceSection extends StatelessWidget {
  AssuranceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60),
      width: w,
      height: 200,
      decoration: BoxDecoration(
        color: AppColors.goldenF9F1E7,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CardWidget(
            image: AppImage.shopImage3,
            mainText: 'High Quality',
            subText: 'crafted from top materials',
          ),
          CardWidget(
            image: AppImage.shopImage2,
            mainText: 'Warranty Protection',
            subText: 'Over 2 years',
          ),
          CardWidget(
            image: AppImage.shopImage1,
            mainText: 'Free Shipping',
            subText: 'Order over 150\$',
          ),
          CardWidget(
            image: AppImage.shopImage0,
            mainText: '24 / 7 Support',
            subText: 'Dedicated support',
          ),
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String image;
  final String mainText;
  final String subText;

  const CardWidget({
    Key? key,
    required this.image,
    required this.mainText,
    required this.subText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            color: AppColors.heading000000,
            width: 40,
            height: 40,
          ),
          Container(
            margin: EdgeInsets.only(left: 4),
            height: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mainText,
                  style: TextStyle(
                    color: AppColors.heading000000,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Text(
                  subText,
                  style: TextStyle(
                    color: AppColors.heading898989,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
