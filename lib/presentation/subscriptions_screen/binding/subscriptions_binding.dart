import 'package:fast_ai/presentation/subscriptions_screen/controller/subscriptions_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SubscriptionsScreen.
///
/// This class ensures that the SubscriptionsController is created when the
/// SubscriptionsScreen is first loaded.
class SubscriptionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubscriptionsController());
  }
}
