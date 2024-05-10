import 'package:flutter/material.dart';
import 'package:furniro/common/widgets/assurance_section.dart';
import 'package:furniro/common/widgets/footer.dart';
import 'package:furniro/common/widgets/navbar.dart';
import 'package:furniro/common/widgets/second_nav.dart';
import 'package:furniro/features/shop/widgets/filter_bar.dart';
import 'package:furniro/features/shop/widgets/more_product.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Navbar(),
            SecondNav(),
            FilterBar(),
            MoreProduct(),
            AssuranceSection(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
