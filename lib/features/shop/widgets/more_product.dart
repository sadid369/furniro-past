import 'package:flutter/material.dart';
import 'package:furniro/common/utils/app_colors.dart';
import 'package:furniro/common/utils/app_image.dart';
import 'package:furniro/common/utils/constants.dart';
import 'package:furniro/common/widgets/product_card.dart';
import 'package:furniro/common/widgets/small_box.dart';
import 'package:go_router/go_router.dart';

class MoreProduct extends StatefulWidget {
  const MoreProduct({Key? key}) : super(key: key);

  @override
  _MoreProductState createState() => _MoreProductState();
}

class _MoreProductState extends State<MoreProduct> {
  List<Map<String, dynamic>> productData = [
    {
      "imageUrl": AppImage.homeImage9,
      "productName": "Syltherine",
      "description": "Stylish cafe chair",
      "price": 2500,
      "beforePrice": 3500,
      "discount": 50
    },
    {
      "imageUrl": AppImage.homeImage27,
      "productName": "Leviosa",
      "description": "Stylish cafe chair",
      "price": 2500,
      "beforePrice": 0,
      "discount": 0
    },
    {
      "imageUrl": AppImage.homeImage3,
      "productName": "Lolito",
      "description": "Luxury big sofa",
      "price": 7000,
      "beforePrice": 14000,
      "discount": 50
    },
    {
      "imageUrl": AppImage.homeImage4,
      "productName": "Respira",
      "description": "Outdoor bar table and stool",
      "price": 500,
      "beforePrice": 0,
      "discount": 0
    },
    {
      "imageUrl": AppImage.homeImage5,
      "productName": "Grifo",
      "description": "Night lamp",
      "price": 1500,
      "beforePrice": 0,
      "discount": 0
    },
    {
      "imageUrl": AppImage.homeImage6,
      "productName": "Muggo",
      "description": "Small mug",
      "price": 150,
      "beforePrice": 0,
      "discount": 0
    },
    {
      "imageUrl": AppImage.homeImage7,
      "productName": "Pingky",
      "description": "Cute bed set",
      "price": 7000,
      "beforePrice": 14000,
      "discount": 50
    },
    {
      "imageUrl": AppImage.homeImage8,
      "productName": "Potty",
      "description": "Minimalist flower pot",
      "price": 500,
      "beforePrice": 0,
      "discount": 0
    },
    {
      "imageUrl": AppImage.homeImage5,
      "productName": "Grifo",
      "description": "Night lamp",
      "price": 1500,
      "beforePrice": 0,
      "discount": 0
    },
    {
      "imageUrl": AppImage.homeImage6,
      "productName": "Muggo",
      "description": "Small mug",
      "price": 150,
      "beforePrice": 0,
      "discount": 0
    },
    {
      "imageUrl": AppImage.homeImage7,
      "productName": "Pingky",
      "description": "Cute bed set",
      "price": 7000,
      "beforePrice": 14000,
      "discount": 50
    },
    {
      "imageUrl": AppImage.homeImage8,
      "productName": "Potty",
      "description": "Minimalist flower pot",
      "price": 500,
      "beforePrice": 0,
      "discount": 0
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: w! * 0.7,
      height: h! * 1.6,
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
              itemCount: 12,
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
                final data = productData[index];
                return InkWell(
                  onTap: () {
                    context.go('/single-product');
                  },
                  child: ProductCard(
                    imageUrl: data['imageUrl'],
                    productName: data['productName'],
                    description: data['description'],
                    price: data['price'],
                    beforePrice: data['beforePrice'],
                    discountAmount: data['discount'],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmallBox(
                  width: 48,
                  height: 48,
                  text: '1',
                  bg: AppColors.goldenB88E2F,
                  textColor: Colors.white,
                  radius: 10,
                ),
                SmallBox(
                  width: 48,
                  height: 48,
                  text: '2',
                  bg: AppColors.goldenF9F1E7,
                  textColor: AppColors.heading000000,
                  radius: 10,
                ),
                SmallBox(
                  width: 48,
                  height: 48,
                  text: '3',
                  bg: AppColors.goldenF9F1E7,
                  textColor: AppColors.heading000000,
                  radius: 10,
                ),
                SmallBox(
                  width: 90,
                  height: 48,
                  text: 'Next',
                  bg: AppColors.goldenF9F1E7,
                  textColor: AppColors.heading000000,
                  radius: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
