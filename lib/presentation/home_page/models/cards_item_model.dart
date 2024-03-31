import '../../../core/app_export.dart';/// This class is used in the [cards_item_widget] screen.
class CardsItemModel {CardsItemModel({this.settings, this.voiceAI, this.convertTextToVoice, this.television, this.id, }) { settings = settings  ?? Rx(ImageConstant.imgSettings);voiceAI = voiceAI  ?? Rx("Animiya");convertTextToVoice = convertTextToVoice  ?? Rx("Convert Text To Voice");television = television  ?? Rx(ImageConstant.imgTelevision);id = id  ?? Rx(""); }

Rx<String>? settings;

Rx<String>? voiceAI;

Rx<String>? convertTextToVoice;

Rx<String>? television;

Rx<String>? id;

 }
