import 'package:fast_ai/presentation/terms_condition_screen/controller/terms_condition_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TermsConditionScreen.
///
/// This class ensures that the TermsConditionController is created when the
/// TermsConditionScreen is first loaded.
class TermsConditionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TermsConditionController());
  }
}
