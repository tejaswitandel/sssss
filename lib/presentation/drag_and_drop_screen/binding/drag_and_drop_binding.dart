import '../controller/drag_and_drop_controller.dart';
import 'package:get/get.dart';

class DragAndDropBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DragAndDropController());
  }
}
