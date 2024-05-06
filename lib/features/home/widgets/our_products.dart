import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniro/common/utils/app_colors.dart';
import 'package:furniro/common/utils/app_image.dart';
import 'package:furniro/common/utils/constants.dart';
import 'package:furniro/common/widgets/app_button_white.dart';
import 'package:furniro/common/widgets/product_card.dart';

class OurProducts extends StatefulWidget {
  const OurProducts({Key? key}) : super(key: key);

  @override
  _OurProductsState createState() => _OurProductsState();
}

class _OurProductsState extends State<OurProducts> {
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
  ];
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
                final data = productData[index];
                return ProductCard(
                  imageUrl: data['imageUrl'],
                  productName: data['productName'],
                  description: data['description'],
                  price: data['price'],
                  beforePrice: data['beforePrice'],
                  discountAmount: data['discount'],
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          AppButtonWhite(
            width: 165,
            height: 40,
            text: 'Show More',
            border: true,
            onTap: () {},
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
