import '../../../core/app_export.dart';import '../models/text_ai_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the TextAiTabContainerScreen.
///
/// This class manages the state of the TextAiTabContainerScreen, including the
/// current textAiTabContainerModelObj
class TextAiTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<TextAiTabContainerModel> textAiTabContainerModelObj = TextAiTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

 }
