import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniro/common/utils/app_colors.dart';
import 'package:furniro/common/utils/app_image.dart';
import 'package:furniro/common/utils/constants.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h!,
      decoration: BoxDecoration(
          // color: AppColors.goldenF9F1E7,
          // border: Border.all(
          //   color: Colors.black,
          // ),
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 25),
            width: 550,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Description',
                  style: TextStyle(
                    color: AppColors.heading000000,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Additional Information',
                  style: TextStyle(
                    color: AppColors.heading9F9F9F,
                    fontSize: 20,
                    // fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Reviews [5]',
                  style: TextStyle(
                    color: AppColors.heading9F9F9F,
                    fontSize: 20,
                    // fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Embodying the raw, wayward spirit of rock ‘n’ roll, the Kilburn portable active stereo speaker takes the unmistakable look and\nsound of Marshall, unplugs the chords, and takes the show on the road.',
                  style: TextStyle(
                    color: AppColors.heading9F9F9F,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Weighing in under 7 pounds, the Kilburn is a lightweight piece of vintage styled engineering. Setting the bar as one of the loudest\nspeakers in its class, the Kilburn is a compact, stout-hearted hero with a well-balanced audio which boasts a clear midrange\nand extended highs for a sound that is both articulate and pronounced. The analogue knobs allow you to fine tune the controls\nto your personal preferences while the guitar-influenced leather strap enables easy and stylish travel.',
                  style: TextStyle(
                    color: AppColors.heading9F9F9F,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 500,
                  height: 270,
                  decoration: BoxDecoration(
                    color: AppColors.goldenF9F1E7,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    AppImage.single_product_image2,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  width: 500,
                  height: 270,
                  decoration: BoxDecoration(
                    color: AppColors.goldenF9F1E7,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    AppImage.single_product_image1,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Divider(
            color: AppColors.heading9F9F9F,
            endIndent: 100,
            indent: 100,
          )
        ],
      ),
    );
  }
}
