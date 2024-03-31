import 'package:fast_ai/widgets/custom_search_view.dart';
import 'widgets/search_item_widget.dart';
import 'models/search_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:fast_ai/core/app_export.dart';
import 'controller/search_controller.dart';

// ignore_for_file: must_be_immutable
class SearchScreen extends GetWidget<SearchController> {
  const SearchScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.black90003,
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle984407x375,
                width: 375.h,
                alignment: Alignment.topCenter,
              ),
              Align(
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
                      CustomSearchView(
                        controller: controller.searchController,
                        hintText: "lbl_text_ai2".tr,
                      ),
                      SizedBox(height: 25.v),
                      Container(
                        width: 250.h,
                        margin: EdgeInsets.only(right: 64.h),
                        child: Text(
                          "msg_10_results_found".tr.toUpperCase(),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.displayMedium!.copyWith(
                            height: 1.04,
                          ),
                        ),
                      ),
                      SizedBox(height: 18.v),
                      _buildSearch(),
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
  Widget _buildSearch() {
    return Obx(
      () => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 173.v,
          crossAxisCount: 2,
          mainAxisSpacing: 11.h,
          crossAxisSpacing: 11.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: controller.searchModelObj.value.searchItemList.value.length,
        itemBuilder: (context, index) {
          SearchItemModel model =
              controller.searchModelObj.value.searchItemList.value[index];
          return SearchItemWidget(
            model,
          );
        },
      ),
    );
  }
}
