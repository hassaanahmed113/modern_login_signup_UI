import 'package:flutter/material.dart';
import 'package:login_signup/core/global_text.dart';
import 'package:login_signup/core/utils/color_utils.dart';
import 'package:login_signup/core/utils/screen_size.dart';

Widget customElevatedBtn(BuildContext context, String text) {
  return GestureDetector(
    onTap: () {},
    child: Container(
        alignment: Alignment.center,
        height: ScreenSize.screenHeight(context) * 0.08,
        width: ScreenSize.screenWidth(context),
        decoration: const BoxDecoration(
            color: ColorConstraint.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(6.0))),
        child: customTextWidget(
            text: text, fontSize: 20, fontWeight: FontWeight.bold)),
  );
}
