import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniro/common/utils/app_colors.dart';
import 'package:furniro/common/utils/app_image.dart';
import 'package:furniro/common/utils/constants.dart';
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
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                    ),
                  ),
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
