import '../../../core/app_export.dart';
import '../models/account_deactivation_model.dart';

/// A controller class for the AccountDeactivationBottomsheet.
///
/// This class manages the state of the AccountDeactivationBottomsheet, including the
/// current accountDeactivationModelObj
class AccountDeactivationController extends GetxController {
  Rx<AccountDeactivationModel> accountDeactivationModelObj =
      AccountDeactivationModel().obs;
}
