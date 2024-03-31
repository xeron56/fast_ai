import '../../../core/app_export.dart';import '../models/text_ai_blog_model.dart';import 'package:flutter/material.dart';/// A controller class for the TextAiBlogScreen.
///
/// This class manages the state of the TextAiBlogScreen, including the
/// current textAiBlogModelObj
class TextAiBlogController extends GetxController {TextEditingController toneOfVoiceController = TextEditingController();

TextEditingController textFildController = TextEditingController();

Rx<TextAiBlogModel> textAiBlogModelObj = TextAiBlogModel().obs;

@override void onClose() { super.onClose(); toneOfVoiceController.dispose(); textFildController.dispose(); } 
 }
