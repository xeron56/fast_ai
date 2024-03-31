import '../../../core/app_export.dart';import '../models/video_ai_model.dart';import 'package:flutter/material.dart';/// A controller class for the VideoAiScreen.
///
/// This class manages the state of the VideoAiScreen, including the
/// current videoAiModelObj
class VideoAiController extends GetxController {TextEditingController typeyourtexthereController = TextEditingController();

Rx<VideoAiModel> videoAiModelObj = VideoAiModel().obs;

@override void onClose() { super.onClose(); typeyourtexthereController.dispose(); } 
 }
