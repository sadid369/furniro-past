import 'package:flutter/material.dart';
import 'package:furniro/common/utils/app_colors.dart';
import 'package:furniro/common/utils/app_image.dart';
import 'package:furniro/common/utils/constants.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: w!,
      height: h! * .7,
      decoration: BoxDecoration(
          // color: AppColors.goldenFCF8F3,
          // border: Border.all(
          //   color: Colors.black,
          // ),
          ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            color: AppColors.heading000000.withOpacity(0.1),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(AppImage.homeImage0),
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "400 University Drive Suite 200 Coral\nGables,\nFL 33134 USA",
                      style: TextStyle(
                        fontSize: 12,
                        // fontWeight: FontWeight.bold,
                        color: AppColors.heading616161,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: AppColors.heading000000),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: AppColors.heading000000,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: AppColors.heading000000),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Links",
                      style: TextStyle(
                        fontSize: 10,
                        // fontWeight: FontWeight.bold,
                        color: AppColors.heading9F9F9F,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Home",
                      style: _footerTextStyle,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Shop",
                      style: _footerTextStyle,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "About",
                      style: _footerTextStyle,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Contact",
                      style: _footerTextStyle,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Help",
                      style: TextStyle(
                        fontSize: 10,
                        // fontWeight: FontWeight.bold,
                        color: AppColors.heading9F9F9F,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Payment Options",
                      style: _footerTextStyle,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Returns",
                      style: _footerTextStyle,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Privacy Policies",
                      style: _footerTextStyle,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "",
                      style: _footerTextStyle,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Newsletter",
                      style: TextStyle(
                        fontSize: 10,
                        // fontWeight: FontWeight.bold,
                        color: AppColors.heading9F9F9F,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 150,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Enter Your Email Address',
                                hintStyle: TextStyle(
                                  fontSize: 8,
                                )),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'SUBSCRIBE',
                            style: TextStyle(
                              fontSize: 10,
                              color: AppColors.heading000000,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "",
                      style: _footerTextStyle,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "",
                      style: _footerTextStyle,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text("", style: _footerTextStyle),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 120,
              top: 15,
            ),
            child: Row(
              children: [
                Text(
                  '2024 furino. All rights reverved',
                  style: TextStyle(
                    color: AppColors.heading000000,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  TextStyle _footerTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.heading000000,
  );
}
