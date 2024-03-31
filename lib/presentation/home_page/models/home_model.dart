import '../../../core/app_export.dart';import 'cards_item_model.dart';/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {Rx<List<CardsItemModel>> cardsItemList = Rx([CardsItemModel(settings:ImageConstant.imgSettings.obs,voiceAI: "Animiya".obs,convertTextToVoice: "Convert Text To Voice".obs,television:ImageConstant.imgTelevision.obs)]);

 }
