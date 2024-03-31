import '../../../core/app_export.dart';import '../models/blog_idea_model.dart';/// A controller class for the BlogIdeaScreen.
///
/// This class manages the state of the BlogIdeaScreen, including the
/// current blogIdeaModelObj
class BlogIdeaController extends GetxController {Rx<BlogIdeaModel> blogIdeaModelObj = BlogIdeaModel().obs;

Rx<bool> isSelectedSwitch = false.obs;

 }
