import '../../../core/app_export.dart';/// This class is used in the [explore_item_widget] screen.
class ExploreItemModel {ExploreItemModel({this.settings, this.voiceAI, this.convertTextToVoice, this.id, }) { settings = settings  ?? Rx(ImageConstant.imgSettings);voiceAI = voiceAI  ?? Rx("Animiya");convertTextToVoice = convertTextToVoice  ?? Rx("Convert Text To Voice");id = id  ?? Rx(""); }

Rx<String>? settings;

Rx<String>? voiceAI;

Rx<String>? convertTextToVoice;

Rx<String>? id;

 }
