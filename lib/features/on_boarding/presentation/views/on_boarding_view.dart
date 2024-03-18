import 'package:dalel/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_botton.dart';
import '../widgets/custom_nav_bar.dart';
import '../widgets/on_boarding_widget_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const CustomNavBar(),
              OnBoardingWidgetBody(),
              const SizedBox(
                height: 80,
              ),
              const CustomBotton(
                color: AppColors.kPrimaryColor,
                text: AppStrings.nextText,
              ),
              const SizedBox(
                height: 17,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
