import 'package:flutter/material.dart';
import 'package:rental_car/presentation/onbording/widgets/page_view_widget.dart';
import 'package:rental_car/utils/constants/colors.dart';
import 'package:rental_car/utils/constants/image_strings.dart';
import 'package:rental_car/utils/constants/sizes.dart';
import 'package:rental_car/utils/constants/text_strings.dart';
import 'package:rental_car/utils/device/device_utility.dart';
import 'package:rental_car/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
        body: Stack(
      children: [
        /// Horizontal pages
        PageView(
          children: const [
            PageViewWidget(
              title: TTexts.onBoardingTitle1,
              image: IImages.onBoardingImage1,
              subTitle: TTexts.onBoardingSubTitle1,
            ),
            PageViewWidget(
              title: TTexts.onBoardingTitle2,
              image: IImages.onBoardingImage2,
              subTitle: TTexts.onBoardingSubTitle2,
            ),
            PageViewWidget(
              title: TTexts.onBoardingTitle3,
              image: IImages.onBoardingImage3,
              subTitle: TTexts.onBoardingSubTitle3,
            ),
          ],
        ),

        /// Skip Button
        Positioned(
          top: TDeviceUtils.getAppBarHeight(),
          right: TSizes.defaultSpace,
          child: TextButton(
            onPressed: () {

            },
            child: const Text(
              TTexts.skip,
            ),
          ),
        ),

        Positioned(
          bottom: TDeviceUtils.getBottomNavigationBarHeight() * 1,
          left: TSizes.defaultSpace,
          child: SmoothPageIndicator(
            controller: PageController(),
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: dark ? TColors.light :TColors.primary,
              dotHeight: 6,
            ),
          ),
        ),

        Positioned(
          bottom: 4,
          right: 3,
          child: ElevatedButton(
            onPressed: () {

            },
            child: const Icon(Icons.arrow_back_ios) ,
          ),
        ),

      ],
    ));
  }
}
