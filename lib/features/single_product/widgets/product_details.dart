// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:furniro/common/utils/app_colors.dart';
import 'package:furniro/common/utils/app_image.dart';
import 'package:furniro/common/utils/constants.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 35),
      width: w,
      height: h! * 0.78,
      decoration: BoxDecoration(
        // color: AppColors.goldenF9F1E7,
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                height: 380,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ImageContainer(
                      image: AppImage.single_product_image3,
                      width: 76,
                      height: 80,
                      bg: AppColors.goldenF9F1E7,
                    ),
                    ImageContainer(
                      image: AppImage.single_product_image4,
                      width: 76,
                      height: 80,
                      bg: AppColors.goldenF9F1E7,
                    ),
                    ImageContainer(
                      image: AppImage.single_product_image8,
                      width: 76,
                      height: 80,
                      bg: AppColors.goldenF9F1E7,
                    ),
                    ImageContainer(
                      image: AppImage.single_product_image9,
                      width: 76,
                      height: 80,
                      bg: AppColors.goldenF9F1E7,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          ImageContainer(
            image: AppImage.single_product_image0,
            width: 400,
            height: 430,
            bg: AppColors.goldenF9F1E7,
          ),
          const SizedBox(
            width: 40,
          ),
          Column(
            children: [],
          )
        ],
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  final String image;
  final double width;
  final double height;
  final Color bg;

  const ImageContainer({
    Key? key,
    required this.image,
    required this.width,
    required this.height,
    required this.bg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(image),
    );
  }
}
