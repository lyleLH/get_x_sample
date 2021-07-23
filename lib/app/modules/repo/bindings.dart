import 'package:get/get.dart';

import 'controller.dart';

class RepoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RepoController>(() => RepoController());
  }
}
