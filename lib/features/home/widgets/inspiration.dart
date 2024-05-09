import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniro/common/utils/app_colors.dart';
import 'package:furniro/common/utils/app_image.dart';
import 'package:furniro/common/utils/constants.dart';
import 'package:furniro/common/widgets/app_button_golden.dart';
import 'package:furniro/common/widgets/small_box.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Inspiration extends StatefulWidget {
  const Inspiration({Key? key}) : super(key: key);

  @override
  _InspirationState createState() => _InspirationState();
}

class _InspirationState extends State<Inspiration> {
  // final controller = PageController(viewportFraction: 0.8, keepPage: true);
  List items = [
    AppImage.homeImage14,
    AppImage.homeImage11,
    AppImage.homeImage16,
    AppImage.homeImage17,
    AppImage.homeImage19,
    AppImage.homeImage21,
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: w! * 0.7,
      height: h! * .7,
      decoration: BoxDecoration(
        color: AppColors.goldenFCF8F3,
        // border: Border.all(
        //   color: Colors.black,
        // ),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '50+ Beautiful rooms\ninspiration',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.heading3A3A3A,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Our designer already made a lot of beautiful\nprototipe of rooms that inspire you',
                  style: TextStyle(
                    fontSize: 12,
                    // fontWeight: FontWeight.bold,
                    color: AppColors.heading616161,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                AppButtonGolden(
                  width: 170,
                  height: 40,
                  text: 'Explore More',
                  onTap: () {},
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            width: 280,
            height: 580,
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.green),
              image: DecorationImage(
                image: AssetImage(
                  AppImage.homeImage13,
                ),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '01 --- Bed Room',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.heading616161,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Inner Peace',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.heading3A3A3A,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 68,
                  bottom: 20,
                  child: SmallBox(
                    width: 40,
                    height: 40,
                    text: '',
                    bg: AppColors.goldenB88E2F,
                    textColor: Colors.white,
                    isBorderRadios: false,
                    isIcon: true,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            width: 300,
            height: 580,
            // decoration: BoxDecoration(border: Border.all(color: Colors.amber)),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CarouselSlider(
                  items: items.map((e) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            e,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 300,
                    aspectRatio: 16 / 9,
                    // viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    // enlargeFactor: 0.05,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                AnimatedSmoothIndicator(
                  effect: ScrollingDotsEffect(
                    activeDotColor: AppColors.goldenB88E2F,
                    dotColor: AppColors.headingD8D8D8,
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                  activeIndex: currentIndex,
                  onDotClicked: (index) {},
                  count: items.length,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
