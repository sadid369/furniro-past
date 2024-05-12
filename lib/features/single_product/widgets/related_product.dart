import 'package:flutter/material.dart';
import 'package:furniro/common/utils/app_colors.dart';
import 'package:furniro/common/utils/app_image.dart';
import 'package:furniro/common/utils/constants.dart';
import 'package:furniro/common/widgets/app_button.dart';
import 'package:furniro/common/widgets/product_card.dart';

class RelatedProduct extends StatefulWidget {
  const RelatedProduct({Key? key}) : super(key: key);

  @override
  _RelatedProductState createState() => _RelatedProductState();
}

class _RelatedProductState extends State<RelatedProduct> {
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
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: w! * 0.7,
      height: h! * 0.7,
      child: Column(
        children: [
          Text(
            'Related Products',
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
              itemCount: productData.length,
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
          AppButton(
            bg: Colors.white,
            textColor: AppColors.goldenB88E2F,
            borderWidth: 2,
            width: 165,
            height: 40,
            text: 'Show More',
            onTap: () {},
            borderColor: AppColors.goldenB88E2F,
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
