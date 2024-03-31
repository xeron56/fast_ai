import '../../../core/app_export.dart';import 'filds_item_model.dart';/// This class defines the variables used in the [product_description_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductDescriptionModel {Rx<List<FildsItemModel>> fildsItemList = Rx([FildsItemModel(findAllTheAi: "Find all the ai apps you love and discover new ones in a matter of seconds".obs),FildsItemModel(findAllTheAi: "Find all the ai apps you need, in one place. Speed up your life!".obs)]);

 }
