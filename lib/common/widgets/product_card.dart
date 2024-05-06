// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:furniro/common/utils/app_colors.dart';
import 'package:furniro/common/utils/app_image.dart';
import 'package:furniro/common/utils/constants.dart';
import 'package:furniro/common/widgets/app_button_golden.dart';
import 'package:furniro/common/widgets/app_button_white.dart';

class ProductCard extends StatefulWidget {
  final String imageUrl;
  final String productName;
  final String description;
  final double price;
  final double beforePrice;
  final double discountAmount;

  const ProductCard({
    Key? key,
    required this.imageUrl,
    required this.productName,
    required this.description,
    required this.price,
    required this.beforePrice,
    this.discountAmount = 0,
  }) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHover = false;
        });
      },
      child: Container(
        decoration: BoxDecoration(),
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
                    widget.imageUrl,
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
                          if (widget.beforePrice > 0)
                            Text('RP ${widget.beforePrice}.00',
                                style: TextStyle(
                                    fontSize: 9,
                                    color: AppColors.headingB0B0B0,
                                    decoration: TextDecoration.lineThrough
                                    // fontWeight: FontWeight.w600,
                                    ))
                        ],
                      ),
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
                  color: widget.discountAmount <= 0
                      ? AppColors.newGreen
                      : AppColors.discountRed,
                  shape: BoxShape.circle,
                ),
                child: widget.discountAmount <= 0
                    ? Text(
                        'New',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    : Text(
                        "-${widget.discountAmount}%",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
              ),
            ),
            if (isHover)
              Container(
                width: 222,
                height: 299,
                color: Colors.black.withOpacity(0.6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppButtonWhite(
                      width: 165,
                      height: 40,
                      text: 'Add to cart',
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.share,
                              color: Colors.white,
                              size: 12,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Share',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.compare_arrows,
                              color: Colors.white,
                              size: 16,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Compare',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.favorite_outline,
                              color: Colors.white,
                              size: 12,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Like',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
