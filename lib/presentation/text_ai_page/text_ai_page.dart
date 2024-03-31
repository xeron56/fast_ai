import 'package:fast_ai/core/utils/validation_functions.dart';
import 'package:fast_ai/widgets/custom_text_form_field.dart';
import 'package:fast_ai/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fast_ai/core/app_export.dart';
import 'controller/text_ai_controller.dart';
import 'models/text_ai_model.dart';

class TextAiPage extends StatelessWidget {
  TextAiPage({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextAiController controller = Get.put(TextAiController(TextAiModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: Column(
                  children: [
                    SizedBox(height: 30.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.h),
                      child: Column(
                        children: [
                          CustomTextFormField(
                            controller: controller.durationController,
                            hintText: "msg_hi_my_name_is_sarah".tr,
                            hintStyle: CustomTextStyles.titleMedium16,
                            validator: (value) {
                              if (!isText(value)) {
                                return "err_msg_please_enter_valid_text".tr;
                              }
                              return null;
                            },
                            maxLines: 8,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.h,
                              vertical: 21.v,
                            ),
                            borderDecoration:
                                TextFormFieldStyleHelper.fillBlack,
                            fillColor: appTheme.black90003,
                          ),
                          SizedBox(height: 20.v),
                          CustomTextFormField(
                            controller: controller.toneOfVoiceController,
                            hintText: "msg_tone_of_voice_ex".tr,
                            textInputAction: TextInputAction.done,
                            borderDecoration:
                                TextFormFieldStyleHelper.fillBlackTL17,
                            fillColor: appTheme.black90003,
                          ),
                          SizedBox(height: 100.v),
                          CustomElevatedButton(
                            text: "lbl_create_content".tr,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
