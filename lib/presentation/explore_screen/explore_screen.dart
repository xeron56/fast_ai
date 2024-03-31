import 'package:fast_ai/presentation/home_page/home_page.dart';
import 'package:fast_ai/widgets/app_bar/custom_app_bar.dart';
import 'package:fast_ai/widgets/app_bar/appbar_leading_iconbutton_six.dart';
import 'package:fast_ai/widgets/app_bar/appbar_title.dart';
import 'package:fast_ai/widgets/app_bar/appbar_image.dart';
import 'widgets/explore_item_widget.dart';
import 'models/explore_item_model.dart';
import 'package:fast_ai/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:fast_ai/core/app_export.dart';
import 'controller/explore_controller.dart';

// ignore_for_file: must_be_immutable
class ExploreScreen extends GetWidget<ExploreController> {
  const ExploreScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black90003,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: 407.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle984407x375,
                            width: 375.h,
                            alignment: Alignment.center,
                          ),
                          _buildMenu(),
                        ],
                      ),
                    ),
                  ),
                  _buildExplore(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildMenu() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 30.h,
          top: 50.v,
          right: 30.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              leadingWidth: 80.h,
              leading: AppbarLeadingIconbuttonSix(
                imagePath: ImageConstant.imgMenuWhiteA70050x50,
                margin: EdgeInsets.only(left: 30.h),
              ),
              title: Container(
                margin: EdgeInsets.only(left: 65.h),
                padding: EdgeInsets.all(2.h),
                decoration: AppDecoration.fillBlack90003.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder23,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AppbarTitle(
                      text: "lbl_premium_member".tr,
                      margin: EdgeInsets.only(
                        left: 18.h,
                        top: 14.v,
                        bottom: 13.v,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 11.h),
                      padding: EdgeInsets.all(13.h),
                      decoration: AppDecoration.fillGreenA.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder23,
                      ),
                      child: AppbarImage(
                        imagePath: ImageConstant.imgThumbsUp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 35.v),
            Container(
              width: 279.h,
              margin: EdgeInsets.only(right: 35.h),
              child: Text(
                "msg_explore_all_best".tr.toUpperCase(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.displayMedium!.copyWith(
                  height: 1.04,
                ),
              ),
            ),
            Text(
              "msg_explore_the_best".tr,
              style: CustomTextStyles.titleMediumGray50001,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildExplore() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 30.h,
          top: 290.v,
          right: 30.h,
        ),
        child: Obx(
          () => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 173.v,
              crossAxisCount: 2,
              mainAxisSpacing: 11.h,
              crossAxisSpacing: 11.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount:
                controller.exploreModelObj.value.exploreItemList.value.length,
            itemBuilder: (context, index) {
              ExploreItemModel model =
                  controller.exploreModelObj.value.exploreItemList.value[index];
              return ExploreItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Explore:
        return "/";
      case BottomBarEnum.Settings:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }
}
