import '../controller/drag_and_drop_controller.dart';
import '../models/draganddrop_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tejaswi_s_application68/core/app_export.dart';

// ignore: must_be_immutable
class DraganddropItemWidget extends StatelessWidget {
  DraganddropItemWidget(this.draganddropItemModelObj);

  DraganddropItemModel draganddropItemModelObj;

  var controller = Get.find<DragAndDropController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getSize(
        130,
      ),
      width: getSize(
        130,
      ),
      decoration: BoxDecoration(
        color: ColorConstant.blueGray100,
      ),
    );
  }
}
