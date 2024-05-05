import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniro/common/utils/app_colors.dart';
import 'package:furniro/common/utils/app_image.dart';
import 'package:furniro/common/utils/constants.dart';
import 'package:furniro/common/widgets/product_card.dart';

class OurProducts extends StatefulWidget {
  const OurProducts({Key? key}) : super(key: key);

  @override
  _OurProductsState createState() => _OurProductsState();
}

class _OurProductsState extends State<OurProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: w! * 0.7,
      height: h! * 1,
      // padding: const EdgeInsets.all(20),
      // decoration: BoxDecoration(
      //   border: Border.all(
      //     color: Colors.black,
      //     width: 1,
      //   ),
      // ),
      child: Column(
        children: [
          Text(
            'Our Products',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: AppColors.heading333333,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 8,
              shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.7945,
                // childAspectRatio: w! / (h!),
              ),
              itemBuilder: (context, index) {
                return ProductCard(
                  imageUrl: AppImage.homeImage1,
                  productName: 'Syltherine',
                  description: 'Stylish cafe chair',
                  price: 2500.00,
                  beforePrice: 3500.00,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
