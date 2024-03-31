import '../../../core/app_export.dart';
import '../models/explore_model.dart';

/// A controller class for the ExploreScreen.
///
/// This class manages the state of the ExploreScreen, including the
/// current exploreModelObj
class ExploreController extends GetxController {
  Rx<ExploreModel> exploreModelObj = ExploreModel().obs;
}
