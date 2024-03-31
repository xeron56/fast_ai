import '../../../core/app_export.dart';import '../models/text_ai_product_model.dart';import 'package:flutter/material.dart';/// A controller class for the TextAiProductScreen.
///
/// This class manages the state of the TextAiProductScreen, including the
/// current textAiProductModelObj
class TextAiProductController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController textFildController = TextEditingController();

Rx<TextAiProductModel> textAiProductModelObj = TextAiProductModel().obs;

@override void onClose() { super.onClose(); nameController.dispose(); textFildController.dispose(); } 
 }
