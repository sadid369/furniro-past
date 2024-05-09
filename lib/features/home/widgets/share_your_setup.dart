import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:furniro/common/utils/app_colors.dart';
import 'package:furniro/common/utils/app_image.dart';
import 'package:furniro/common/utils/constants.dart';

class ShareYourSetup extends StatefulWidget {
  const ShareYourSetup({Key? key}) : super(key: key);

  @override
  _ShareYourSetupState createState() => _ShareYourSetupState();
}

class _ShareYourSetupState extends State<ShareYourSetup> {
  List items = [
    AppImage.homeImage14,
    AppImage.homeImage11,
    AppImage.homeImage16,
    AppImage.homeImage17,
    AppImage.homeImage19,
    AppImage.homeImage21,
    // AppImage.homeImage14,
    // AppImage.homeImage11,
    // AppImage.homeImage16,
    // AppImage.homeImage17,
    // AppImage.homeImage19,
    // AppImage.homeImage21,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: w! * 0.7,
      height: h! * .7,
      decoration: BoxDecoration(
          // color: AppColors.goldenFCF8F3,
          // border: Border.all(
          //   color: Colors.black,
          // ),
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Share your setup with',
                style: TextStyle(
                  color: AppColors.heading616161,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '#FuniroFurniture',
                style: TextStyle(
                  color: AppColors.heading3A3A3A,
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          Container(
            width: w,
            height: 380,
            child: MasonryGridView.builder(
              itemCount: items.length,
              gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5),
              itemBuilder: (context, index) {
                return Container(
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //     fit: BoxFit.cover,
                  //     image: AssetImage(
                  //       items[index],
                  //     ),
                  //   ),
                  // ),
                  child: Image.asset(items[index]),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
