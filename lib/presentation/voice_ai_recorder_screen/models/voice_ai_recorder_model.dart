import 'package:fast_ai/core/app_export.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [voice_ai_recorder_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class VoiceAiRecorderModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

 }
