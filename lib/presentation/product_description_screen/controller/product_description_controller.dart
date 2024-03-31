import '../../../core/app_export.dart';import '../models/product_description_model.dart';/// A controller class for the ProductDescriptionScreen.
///
/// This class manages the state of the ProductDescriptionScreen, including the
/// current productDescriptionModelObj
class ProductDescriptionController extends GetxController {Rx<ProductDescriptionModel> productDescriptionModelObj = ProductDescriptionModel().obs;

 }
