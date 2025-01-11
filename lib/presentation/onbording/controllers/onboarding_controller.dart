import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rental_car/presentation/cars/ui/car_list_screen.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// update Current Index
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to the Specific dot selected page
  void dotNavigationClicked(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// update Current Index and jump to next page
  void nextPage() {
    if (currentPageIndex.value ==2){
      Get.to( CarListScreen());
    } else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// update Current Index and jump to LAST page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpTo(2);
  }

}
