import '../../../core/app_export.dart';/// This class is used in the [filds_item_widget] screen.
class FildsItemModel {FildsItemModel({this.findAllTheAi, this.id, }) { findAllTheAi = findAllTheAi  ?? Rx("Find all the ai apps you love and discover new ones in a matter of seconds");id = id  ?? Rx(""); }

Rx<String>? findAllTheAi;

Rx<String>? id;

 }
