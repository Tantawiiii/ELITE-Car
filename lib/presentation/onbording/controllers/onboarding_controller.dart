import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// update Current Index
  void updatePageIndicator(index) {}

  /// Jump to the Specific dot selected page
  void dotNavigationClicked(index) {}

  /// update Current Index and jump to next page
  void nextPage() {}

  /// update Current Index and jump to LAST page
  void skipPage() {}

}
