import 'package:fast_ai/presentation/blog_idea_screen/controller/blog_idea_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BlogIdeaScreen.
///
/// This class ensures that the BlogIdeaController is created when the
/// BlogIdeaScreen is first loaded.
class BlogIdeaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BlogIdeaController());
  }
}
