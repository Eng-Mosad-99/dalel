import 'package:flutter/material.dart';

import 'core/utils/app_assets.dart';

void main() {
  runApp(const Dalel());
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Image.asset(Assets.resourceImagesOnBoarding1),
      ),
    );
  }
}
