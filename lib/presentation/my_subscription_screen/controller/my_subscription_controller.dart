import '../../../core/app_export.dart';import '../models/my_subscription_model.dart';/// A controller class for the MySubscriptionScreen.
///
/// This class manages the state of the MySubscriptionScreen, including the
/// current mySubscriptionModelObj
class MySubscriptionController extends GetxController {Rx<MySubscriptionModel> mySubscriptionModelObj = MySubscriptionModel().obs;

 }
