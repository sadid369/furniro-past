import 'package:flutter/material.dart';
import 'package:furniro/common/widgets/footer.dart';
import 'package:furniro/common/widgets/navbar.dart';
import 'package:furniro/features/single_product/widgets/description.dart';
import 'package:furniro/features/single_product/widgets/navbar_single_product.dart';
import 'package:furniro/features/single_product/widgets/product_details.dart';
import 'package:furniro/features/single_product/widgets/related_product.dart';

class SingleProduct extends StatefulWidget {
  const SingleProduct({Key? key}) : super(key: key);

  @override
  _SingleProductState createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Navbar(),
            NavbarSingleProduct(),
            ProductDetails(),
            Description(),
            RelatedProduct(),
            Footer()
          ],
        ),
      ),
    );
  }
}
