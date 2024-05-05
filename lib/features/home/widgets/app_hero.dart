import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniro/common/utils/app_colors.dart';
import 'package:furniro/common/utils/app_image.dart';
import 'package:furniro/common/utils/constants.dart';
import 'package:furniro/common/widgets/app_button_golden.dart';

class AppHero extends StatelessWidget {
  const AppHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.amber,
        // border: Border.all(color: Colors.black, width: 5),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            AppImage.homeImage25,
          ),
        ),
      ),
      width: w,
      height: (h! - (w! * 0.04399)),
      // height: h,
      child: Stack(
        children: [
          Positioned(
            right: 30,
            bottom: 60,
            child: Container(
              width: 580,
              height: 380,
              padding: EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                color: AppColors.goldenFFF3E3,
                borderRadius: BorderRadius.circular(10),
                // border: Border.all(
                //   color: Colors.red,
                // ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'New Arrival',
                    style: TextStyle(
                      // wordSpacing: 10,
                      letterSpacing: 1.2,
                      fontSize: 16,
                      color: AppColors.heading333333,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Discover Our\nNew Collection',
                    style: TextStyle(
                      height: 1.3,
                      fontSize: 35,
                      color: AppColors.goldenB88E2F,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut\nelit tellus, luctus nec ullamcorper mattis.',
                    style: TextStyle(
                      height: 1.3,
                      fontSize: 16,
                      color: AppColors.heading333333,
                      // fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  AppButtonGolden(
                    width: 180,
                    height: 50,
                    text: 'Buy Now',
                    onTap: () {},
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
