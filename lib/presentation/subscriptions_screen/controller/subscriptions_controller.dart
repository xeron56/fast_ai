import '../../../core/app_export.dart';
import '../models/subscriptions_model.dart';

/// A controller class for the SubscriptionsScreen.
///
/// This class manages the state of the SubscriptionsScreen, including the
/// current subscriptionsModelObj
class SubscriptionsController extends GetxController {
  Rx<SubscriptionsModel> subscriptionsModelObj = SubscriptionsModel().obs;
}
