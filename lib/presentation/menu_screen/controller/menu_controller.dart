import '../../../core/app_export.dart';
import '../models/menu_model.dart';

/// A controller class for the MenuScreen.
///
/// This class manages the state of the MenuScreen, including the
/// current menuModelObj
class MenuController extends GetxController {
  Rx<MenuModel> menuModelObj = MenuModel().obs;
}
