import '../../../core/app_export.dart';import '../models/characters_model.dart';/// A controller class for the CharactersScreen.
///
/// This class manages the state of the CharactersScreen, including the
/// current charactersModelObj
class CharactersController extends GetxController {Rx<CharactersModel> charactersModelObj = CharactersModel().obs;

 }
