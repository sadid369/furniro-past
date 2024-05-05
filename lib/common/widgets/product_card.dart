// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:furniro/common/utils/app_colors.dart';
import 'package:furniro/common/utils/app_image.dart';
import 'package:furniro/common/utils/constants.dart';

class ProductCard extends StatefulWidget {
  final String imageUrl;
  final String productName;
  final String description;
  final double price;
  final double beforePrice;

  const ProductCard({
    Key? key,
    required this.imageUrl,
    required this.productName,
    required this.description,
    required this.price,
    required this.beforePrice,
  }) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   border: Border.all(
      //     color: Colors.black,
      //     width: 1,
      //   ),
      // ),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: 222,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.amber,
                ),
                child: Image.asset(
                  fit: BoxFit.cover,
                  AppImage.homeImage11,
                ),
              ),
              Container(
                width: 222,
                height: 60,
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: AppColors.bgF4F5F7,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.productName,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.heading3A3A3A,
                      ),
                    ),
                    Text(
                      widget.description,
                      style: TextStyle(
                        fontSize: 9,
                        color: AppColors.heading898989,
                        // fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "RP ${widget.price}.00",
                          style: TextStyle(
                            fontSize: 9,
                            color: AppColors.heading3A3A3A,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Text(
                          'RP ${widget.beforePrice}.00',
                          style: TextStyle(
                              fontSize: 9,
                              color: AppColors.headingB0B0B0,
                              decoration: TextDecoration.lineThrough
                              // fontWeight: FontWeight.w600,
                              ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned(
              top: 10,
              right: 10,
              child: Container(
                alignment: Alignment.center,
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.newGreen,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  'New',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
