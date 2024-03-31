import '../../../core/app_export.dart';import '../models/image_ai_uploaded_model.dart';import 'package:flutter/material.dart';/// A controller class for the ImageAiUploadedScreen.
///
/// This class manages the state of the ImageAiUploadedScreen, including the
/// current imageAiUploadedModelObj
class ImageAiUploadedController extends GetxController {TextEditingController textFildController = TextEditingController();

Rx<ImageAiUploadedModel> imageAiUploadedModelObj = ImageAiUploadedModel().obs;

@override void onClose() { super.onClose(); textFildController.dispose(); } 
 }
