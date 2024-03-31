import '../models/characters_item_model.dart';
import '../controller/characters_controller.dart';
import 'package:flutter/material.dart';
import 'package:fast_ai/core/app_export.dart';

// ignore: must_be_immutable
class CharactersItemWidget extends StatelessWidget {
  CharactersItemWidget(
    this.charactersItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CharactersItemModel charactersItemModelObj;

  var controller = Get.find<CharactersController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomImageView(
        imagePath: charactersItemModelObj.rectangle!.value,
        height: 144.v,
        radius: BorderRadius.circular(
          20.h,
        ),
      ),
    );
  }
}
