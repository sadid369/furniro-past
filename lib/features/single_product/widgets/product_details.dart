// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:furniro/common/utils/app_colors.dart';
import 'package:furniro/common/utils/app_image.dart';
import 'package:furniro/common/utils/constants.dart';
import 'package:furniro/common/widgets/app_button.dart';
import 'package:furniro/common/widgets/small_box.dart';

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
      width: w! * 0.9,
      height: h! * 0.78,
      decoration: BoxDecoration(),
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
            width: 80,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Asgaard sofa',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: AppColors.heading000000,
                ),
              ),
              Text(
                'Rs. 250,000.00',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColors.heading9F9F9F,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  RatingBar.builder(
                    itemSize: 20,
                    initialRating: 4.5,
                    minRating: 0.5,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.only(right: 2),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                      // size: 10,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '|',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: AppColors.heading9F9F9F,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '5 Customer Review',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: AppColors.heading9F9F9F,
                    ),
                  ),
                ],
              ),
              Text(
                'Setting the bar as one of the loudest speakers in its class, the\nKilburn is a compact, stout-hearted hero with a well-balanced\naudio which boasts a clear midrange and extended highs for a\nsound.',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: AppColors.heading000000,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Size',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: AppColors.heading9F9F9F,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              SizedBox(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallBox(
                      width: 25,
                      height: 25,
                      text: 'L',
                      bg: AppColors.goldenB88E2F,
                      textColor: Colors.white,
                      radius: 5,
                      // isCircle: true,
                    ),
                    SmallBox(
                      width: 25,
                      height: 25,
                      text: 'XL',
                      bg: AppColors.goldenF9F1E7,
                      textColor: Colors.black,
                      radius: 5,
                      // isCircle: true,
                    ),
                    SmallBox(
                      width: 25,
                      height: 25,
                      text: 'XS',
                      bg: AppColors.goldenF9F1E7,
                      textColor: Colors.black,
                      radius: 5,
                      // isCircle: true,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Color',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: AppColors.heading9F9F9F,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              SizedBox(
                width: 65,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallBox(
                      width: 18,
                      height: 18,
                      text: '',
                      bg: Color(0xff816DFA),
                      textColor: Colors.transparent,
                      radius: 50,
                    ),
                    SmallBox(
                      width: 18,
                      height: 18,
                      text: '',
                      bg: AppColors.goldenB88E2F,
                      textColor: Colors.transparent,
                      radius: 50,
                    ),
                    SmallBox(
                      width: 18,
                      height: 18,
                      text: '',
                      bg: AppColors.heading000000,
                      textColor: Colors.transparent,
                      radius: 50,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              SizedBox(
                width: 480,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppButton(
                      width: 100,
                      height: 50,
                      text: '1',
                      bg: Colors.white,
                      textColor: AppColors.heading000000,
                      borderWidth: 1,
                      borderColor: AppColors.heading9F9F9F,
                      radius: 10,
                      leftLogo: Icons.remove,
                      rightLogo: Icons.add,
                      logoSize: 20,
                      onTap: () {},
                    ),
                    AppButton(
                      width: 180,
                      height: 50,
                      text: 'Add To Cart',
                      bg: Colors.white,
                      textColor: AppColors.heading000000,
                      borderWidth: 1,
                      borderColor: AppColors.heading000000,
                      radius: 10,
                      onTap: () {},
                    ),
                    AppButton(
                      width: 180,
                      height: 50,
                      text: 'Wishlist',
                      bg: Colors.white,
                      textColor: AppColors.heading000000,
                      borderWidth: 1,
                      borderColor: AppColors.heading000000,
                      radius: 10,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 500,
                child: Divider(
                  color: AppColors.headingD8D8D8,
                ),
              ),
              Row(
                children: [
                  Text(
                    'SKU',
                    style: TextStyle(
                      color: AppColors.heading9F9F9F,
                    ),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  Text(
                    ':',
                    style: TextStyle(
                      color: AppColors.heading9F9F9F,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    'SS001',
                    style: TextStyle(
                      color: AppColors.heading9F9F9F,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                      color: AppColors.heading9F9F9F,
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Text(
                    ':',
                    style: TextStyle(
                      color: AppColors.heading9F9F9F,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Sofas',
                    style: TextStyle(
                      color: AppColors.heading9F9F9F,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Tags',
                    style: TextStyle(
                      color: AppColors.heading9F9F9F,
                    ),
                  ),
                  const SizedBox(
                    width: 83,
                  ),
                  Text(
                    ':',
                    style: TextStyle(
                      color: AppColors.heading9F9F9F,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Sofa, Chair, Home, Shop',
                    style: TextStyle(
                      color: AppColors.heading9F9F9F,
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
