import 'package:fast_ai/widgets/app_bar/custom_app_bar.dart';
import 'package:fast_ai/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:fast_ai/widgets/app_bar/appbar_title_button.dart';
import 'package:fast_ai/widgets/custom_search_view.dart';
import 'widgets/cards_item_widget.dart';
import 'models/cards_item_model.dart';
import 'package:flutter/material.dart';
import 'package:fast_ai/core/app_export.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.black90003,
        appBar: _buildAppBar(),
        body: SizedBox(
          height: 622.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle984407x375,
                width: 375.h,
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 313.h,
                        margin: EdgeInsets.only(right: 32.h),
                        child: Text(
                          "msg_all_the_best_ai".tr.toUpperCase(),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.displayMedium!.copyWith(
                            height: 1.04,
                          ),
                        ),
                      ),
                      Text(
                        "msg_explore_the_best".tr,
                        style: CustomTextStyles.titleMediumGray50002,
                      ),
                      SizedBox(height: 17.v),
                      Padding(
                        padding: EdgeInsets.only(right: 30.h),
                        child: CustomSearchView(
                          controller: controller.searchController,
                          hintText: "msg_search_anything".tr,
                        ),
                      ),
                      SizedBox(height: 24.v),
                      _buildText(),
                      SizedBox(height: 16.v),
                      _buildCards(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 80.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgMenuWhiteA70050x50,
        margin: EdgeInsets.only(left: 30.h),
      ),
      title: AppbarTitleButton(
        margin: EdgeInsets.only(left: 65.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildText() {
    return Padding(
      padding: EdgeInsets.only(right: 32.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_popular_ai".tr.toUpperCase(),
            style: theme.textTheme.headlineLarge,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              bottom: 8.v,
            ),
            child: Text(
              "lbl_see_all".tr,
              style: CustomTextStyles.titleMediumGreenA700,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCards() {
    return SizedBox(
      height: 282.v,
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 16.h,
            );
          },
          itemCount: controller.homeModelObj.value.cardsItemList.value.length,
          itemBuilder: (context, index) {
            CardsItemModel model =
                controller.homeModelObj.value.cardsItemList.value[index];
            return CardsItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
