import 'package:fast_ai/presentation/product_description_screen/controller/product_description_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductDescriptionScreen.
///
/// This class ensures that the ProductDescriptionController is created when the
/// ProductDescriptionScreen is first loaded.
class ProductDescriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductDescriptionController());
  }
}
