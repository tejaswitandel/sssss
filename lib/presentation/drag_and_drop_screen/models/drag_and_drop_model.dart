import 'package:get/get.dart';
import 'draganddrop_item_model.dart';

class DragAndDropModel {
  RxList<DraganddropItemModel> draganddropItemList =
      RxList.generate(18, (index) => DraganddropItemModel());
}
