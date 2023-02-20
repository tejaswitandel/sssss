import '../drag_and_drop_screen/widgets/draganddrop_item_widget.dart';
import 'controller/drag_and_drop_controller.dart';
import 'models/draganddrop_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tejaswi_s_application68/core/app_export.dart';
import 'package:tejaswi_s_application68/widgets/app_bar/appbar_image.dart';
import 'package:tejaswi_s_application68/widgets/app_bar/custom_app_bar.dart';

class DragAndDropScreen extends GetWidget<DragAndDropController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 12, bottom: 12),
                    onTap: onTapArrowleft1),
                centerTitle: true,
                title: Text("lbl_photos".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular24),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgOverflowmenu,
                      margin:
                          getMargin(left: 16, top: 12, right: 16, bottom: 11))
                ]),
            body: Padding(
                padding: getPadding(left: 16, top: 25, right: 16),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(131),
                        crossAxisCount: 3,
                        mainAxisSpacing: getHorizontalSize(3),
                        crossAxisSpacing: getHorizontalSize(3)),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller
                        .dragAndDropModelObj.value.draganddropItemList.length,
                    itemBuilder: (context, index) {
                      DraganddropItemModel model = controller
                          .dragAndDropModelObj.value.draganddropItemList[index];
                      return DraganddropItemWidget(model);
                    })))));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
