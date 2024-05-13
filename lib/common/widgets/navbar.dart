import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniro/common/utils/app_colors.dart';
import 'package:furniro/common/utils/app_image.dart';
import 'package:furniro/common/utils/constants.dart';
import 'package:furniro/common/widgets/app_button.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) {
        return mobileView();
      },
      tablet: (p0) {
        return tabletView();
      },
      desktop: (p0) {
        return webView();
      },
    );
  }

  // ==============Web View ===============================
  Widget webView() {
    print(w! * 0.01);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! * 0.04, vertical: w! * 0.01),
      child: GestureDetector(
        onTap: () {
          context.go('/');
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 200,
              child: Row(
                children: [
                  Image.asset(
                    AppImage.logo,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Image.asset(
                    AppImage.homeImage26,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Hello',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.heading000000,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.go('/shop');
                    },
                    child: Text(
                      'Shop',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.heading000000,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'About',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.heading000000,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Contact',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.heading000000,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person_outline_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_outline,
                    ),
                  ),
                  Builder(builder: (_) {
                    return IconButton(
                      onPressed: () {
                        showGeneralDialog(
                          barrierDismissible: true,
                          barrierLabel: "Close",
                          context: context,
                          pageBuilder: (_, __, ___) => Material(
                            type: MaterialType.transparency,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Container(
                                    padding: EdgeInsets.all(20),
                                    width: 300,
                                    height: 500,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Shopping Cart',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.remove_circle,
                                                  color:
                                                      AppColors.heading9F9F9F,
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 15,
                                                right: 20,
                                              ),
                                              child: Divider(
                                                color: AppColors.headingD8D8D8,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              leading: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: AppColors.goldenFCF8F3,
                                                ),
                                                child: Image.asset(
                                                  AppImage
                                                      .single_product_image0,
                                                  width: 80,
                                                  height: 200,
                                                ),
                                              ),
                                              title: Text(
                                                'Asgaard sofa',
                                                style: TextStyle(
                                                  color:
                                                      AppColors.heading000000,
                                                  fontSize: 14,
                                                ),
                                              ),
                                              subtitle: Row(
                                                children: [
                                                  Text(
                                                    '1',
                                                    style: TextStyle(
                                                      color: AppColors
                                                          .heading000000,
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 20,
                                                  ),
                                                  Text(
                                                    'x',
                                                    style: TextStyle(
                                                      color: AppColors
                                                          .heading000000,
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 20,
                                                  ),
                                                  Text(
                                                    " Rs. 250,000.00",
                                                    style: TextStyle(
                                                      color: AppColors
                                                          .goldenB88E2F,
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              trailing: Icon(
                                                Icons.cancel,
                                                color: AppColors.heading9F9F9F,
                                                size: 18,
                                              ),
                                            ),
                                            ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              leading: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: AppColors.goldenFCF8F3,
                                                ),
                                                child: Image.asset(
                                                  AppImage
                                                      .single_product_image8,
                                                  width: 80,
                                                  height: 200,
                                                ),
                                              ),
                                              title: Text(
                                                'Casaliving Wood',
                                                style: TextStyle(
                                                  color:
                                                      AppColors.heading000000,
                                                  fontSize: 14,
                                                ),
                                              ),
                                              subtitle: Row(
                                                children: [
                                                  Text(
                                                    '1',
                                                    style: TextStyle(
                                                      color: AppColors
                                                          .heading000000,
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 20,
                                                  ),
                                                  Text(
                                                    'x',
                                                    style: TextStyle(
                                                      color: AppColors
                                                          .heading000000,
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 20,
                                                  ),
                                                  Text(
                                                    " Rs. 270,000.00",
                                                    style: TextStyle(
                                                      color: AppColors
                                                          .goldenB88E2F,
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              trailing: Icon(
                                                Icons.cancel,
                                                color: AppColors.heading9F9F9F,
                                                size: 18,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  'Subtotal',
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.heading000000,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  " Rs. 520,000.00",
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .goldenB88E2F,
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 5,
                                                right: 25,
                                              ),
                                              child: Divider(
                                                color: AppColors.headingD8D8D8,
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                AppButton(
                                                  width: 60,
                                                  height: 25,
                                                  text: 'Cart',
                                                  textFontSize: 10,
                                                  bg: Colors.white,
                                                  textColor:
                                                      AppColors.heading000000,
                                                  borderWidth: 1,
                                                  borderColor:
                                                      AppColors.heading000000,
                                                  radius: 25,
                                                  onTap: () {},
                                                ),
                                                AppButton(
                                                  width: 70,
                                                  height: 25,
                                                  text: 'Checkout',
                                                  textFontSize: 10,
                                                  bg: Colors.white,
                                                  textColor:
                                                      AppColors.heading000000,
                                                  borderWidth: 1,
                                                  borderColor:
                                                      AppColors.heading000000,
                                                  radius: 25,
                                                  onTap: () {},
                                                ),
                                                AppButton(
                                                  width: 90,
                                                  height: 25,
                                                  text: 'Wishlist',
                                                  textFontSize: 10,
                                                  bg: Colors.white,
                                                  textColor:
                                                      AppColors.heading000000,
                                                  borderWidth: 1,
                                                  borderColor:
                                                      AppColors.heading000000,
                                                  radius: 25,
                                                  onTap: () {},
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          barrierColor: Colors.black.withOpacity(0.2),
                        );
                      },
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                      ),
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

// ==============Mobile View ===============================
  Widget mobileView() {
    return Container();
  }

// ==============Tablet View ===============================
  Widget tabletView() {
    return Container();
  }
}
