import 'controller/group_video_call_controller.dart';
import 'package:flutter/material.dart';
import 'package:tejaswi_s_application68/core/app_export.dart';
import 'package:tejaswi_s_application68/widgets/app_bar/appbar_image.dart';
import 'package:tejaswi_s_application68/widgets/app_bar/custom_app_bar.dart';
import 'package:tejaswi_s_application68/widgets/custom_floating_button.dart';
import 'package:tejaswi_s_application68/widgets/custom_icon_button.dart';

class GroupVideoCallScreen extends GetWidget<GroupVideoCallController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle1321,
                      height: getVerticalSize(152),
                      width: getHorizontalSize(428),
                      alignment: Alignment.bottomCenter),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: getPadding(top: 27, bottom: 27),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgGroup1),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(45),
                                    leadingWidth: 40,
                                    leading: AppbarImage(
                                        height: getSize(24),
                                        width: getSize(24),
                                        svgPath:
                                            ImageConstant.imgArrowleftWhiteA700,
                                        margin: getMargin(left: 16, bottom: 21),
                                        onTap: onTapArrowleft),
                                    title: Padding(
                                        padding: getPadding(left: 16),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(left: 1),
                                                      child: Text(
                                                          "lbl_group_call".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular18))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(right: 53),
                                                      child: Text(
                                                          "lbl_20_23".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular14)))
                                            ]))),
                                Spacer()
                              ])))
                ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 22, right: 22, bottom: 50),
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  CustomIconButton(
                      height: 64,
                      width: 64,
                      child: CustomImageView(
                          svgPath: ImageConstant.imgVideocamera)),
                  CustomIconButton(
                      height: 64,
                      width: 64,
                      margin: getMargin(left: 16),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgMicrophoneoutline)),
                  CustomIconButton(
                      height: 64,
                      width: 64,
                      margin: getMargin(left: 16),
                      variant: IconButtonVariant.OutlineBlack9004d_1,
                      child: CustomImageView(svgPath: ImageConstant.imgCall)),
                  CustomIconButton(
                      height: 64,
                      width: 64,
                      margin: getMargin(left: 16),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgVideocameraBlueA200))
                ])),
            floatingActionButton: CustomFloatingButton(
                height: 64,
                width: 64,
                child: CustomImageView(
                    svgPath: ImageConstant.imgGroup9759,
                    height: getVerticalSize(32.0),
                    width: getHorizontalSize(32.0)))));
  }

  onTapArrowleft() {
    Get.back();
  }
}
