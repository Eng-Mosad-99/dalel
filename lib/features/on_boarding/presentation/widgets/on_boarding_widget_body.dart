import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_assets.dart';
import 'custom_smooth_page_indicator.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  OnBoardingWidgetBody({super.key});
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        controller: _controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 343,
                height: 290,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      Assets.resourceImagesOnBoarding1,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              CustomSmoothPageIndicator(controller: _controller),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Explore The history with Dalel in a smart way',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.poppins500Style24.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Using our app’s history libraries you can find many historical periods',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.poppins300Style16,
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
