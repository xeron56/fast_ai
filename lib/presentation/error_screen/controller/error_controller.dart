import '../../../core/app_export.dart';import '../models/error_model.dart';/// A controller class for the ErrorScreen.
///
/// This class manages the state of the ErrorScreen, including the
/// current errorModelObj
class ErrorController extends GetxController {Rx<ErrorModel> errorModelObj = ErrorModel().obs;

 }
