import '../../../core/app_export.dart';import '../models/image_ai_model.dart';/// A controller class for the ImageAiScreen.
///
/// This class manages the state of the ImageAiScreen, including the
/// current imageAiModelObj
class ImageAiController extends GetxController {Rx<ImageAiModel> imageAiModelObj = ImageAiModel().obs;

 }
