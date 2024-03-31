import 'package:fast_ai/presentation/characters_screen/controller/characters_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CharactersScreen.
///
/// This class ensures that the CharactersController is created when the
/// CharactersScreen is first loaded.
class CharactersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CharactersController());
  }
}
