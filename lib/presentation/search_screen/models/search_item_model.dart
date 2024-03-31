import '../../../core/app_export.dart';/// This class is used in the [search_item_widget] screen.
class SearchItemModel {SearchItemModel({this.voiceAI, this.convertTextToVoice, this.id, }) { voiceAI = voiceAI  ?? Rx("Text AI");convertTextToVoice = convertTextToVoice  ?? Rx("Convert Text To Voice");id = id  ?? Rx(""); }

Rx<String>? voiceAI;

Rx<String>? convertTextToVoice;

Rx<String>? id;

 }
