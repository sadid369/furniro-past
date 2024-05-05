import 'package:flutter/material.dart';
import 'package:furniro/common/utils/app_colors.dart';
import 'package:furniro/common/utils/app_image.dart';
import 'package:furniro/common/utils/constants.dart';

class BrowseRange extends StatefulWidget {
  const BrowseRange({Key? key}) : super(key: key);

  @override
  _BrowseRangeState createState() => _BrowseRangeState();
}

class _BrowseRangeState extends State<BrowseRange> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
      // decoration: BoxDecoration(
      //   border: Border.all(
      //     color: Colors.black,
      //     width: 10,
      //   ),
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Browse The Range',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: AppColors.heading333333,
            ),
          ),
          Text(
            'BLorem ipsum dolor sit amet, consectetur adipiscing elit.',
            style: TextStyle(
              fontSize: 18,
              color: AppColors.heading666666,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    width: 300,
                    height: 420,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          AppImage.homeImage11,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                  ),
                  Text(
                    'Dining',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.heading333333,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Container(
                    width: 300,
                    height: 420,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          AppImage.homeImage2,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                  ),
                  Text(
                    'Living',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.heading333333,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Container(
                    width: 300,
                    height: 420,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          AppImage.homeImage10,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                  ),
                  Text(
                    'Bedroom',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.heading333333,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
