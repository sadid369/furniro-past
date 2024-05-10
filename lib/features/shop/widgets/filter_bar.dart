import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniro/common/utils/app_colors.dart';
import 'package:furniro/common/utils/constants.dart';
import 'package:furniro/common/widgets/small_box.dart';

class FilterBar extends StatefulWidget {
  const FilterBar({Key? key}) : super(key: key);

  @override
  _FilterBarState createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60),
      width: w,
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.goldenF9F1E7,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.tune,
                ),
                Text(
                  'Filter',
                  style: TextStyle(
                    color: AppColors.heading000000,
                  ),
                ),
                Icon(
                  Icons.dashboard,
                ),
                Icon(
                  Icons.view_day_outlined,
                ),
                Text('|'),
                Text('Showing 1–16 of 32 results'),
              ],
            ),
          ),
          SizedBox(
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Show',
                  style: TextStyle(
                    color: AppColors.heading000000,
                  ),
                ),
                SmallBox(
                  width: 55,
                  height: 55,
                  text: '16',
                  bg: Colors.white,
                  textColor: AppColors.heading9F9F9F,
                ),
                Text('Short by'),
                SmallBox(
                  width: 188,
                  height: 55,
                  text: 'Default',
                  bg: Colors.white,
                  textColor: AppColors.heading9F9F9F,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
