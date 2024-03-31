import 'package:fast_ai/presentation/forget_passwords_screen/controller/forget_passwords_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ForgetPasswordsScreen.
///
/// This class ensures that the ForgetPasswordsController is created when the
/// ForgetPasswordsScreen is first loaded.
class ForgetPasswordsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgetPasswordsController());
  }
}
