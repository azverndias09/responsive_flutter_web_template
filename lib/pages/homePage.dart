import 'package:flutter/material.dart';
import 'package:web_shop/constants/constants.dart';
import 'package:web_shop/responsive/desktop_body.dart.dart';
import 'package:web_shop/responsive/mobile_body.dart';
import 'package:web_shop/responsive/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor:
            currentWidth < mobileWidth ? Colors.green : Colors.blue[200],
        body: const ResponsiveLayout(
          mobileBody: MyMobileBody(),
          desktopBody: MyDesktopBody(),
        ));
  }
}
