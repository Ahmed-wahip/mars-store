import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mars/components/info_edit_user_image.dart';
import 'package:mars/components/info_user_porfale_bar.dart';
import 'package:mars/controllers/input_text_controller.dart';
import 'package:mars/core/icon_app.dart';
import 'package:mars/core/size_app.dart';
import 'package:mars/custom/custom_welcome_bar.dart';
import 'package:mars/widgets/hero_button.dart';
import 'package:mars/widgets/input_text.dart';

class PersonSettingScreen extends StatelessWidget {
  const PersonSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              InfoUserProfleBar(
                titelScreenMsg: "persin_setting_titel_msg",
                endIcon: SizedBox(width: 60.w),
              ),
               CustomWelcomeBar(),
              InfoEditUserImage(
                onPressed: () {},
              ),
              SizedBox(height: 20.h),
              InputText(
                validator: (p0) {
                  return "";
                },
                controller: inputTextController.userEmailController,
                odscureText: false,
                hintTextMsg: inputTextController.userEmailController.text,
                suffixIcon: iconApp.removTextIcon,
                prefixIcon: iconApp.emailIcon,
                suffixOnPreesd: () {
                  inputTextController.userEmailController.text == "";
                },
                onChanged: (a) {},
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 10.h),
              InputText(
                validator: (p0) {
                  return "";
                },
                controller: inputTextController.userPhoneController,
                odscureText: false,
                hintTextMsg: inputTextController.userPhoneController.text,
                suffixIcon: iconApp.removTextIcon,
                prefixIcon: iconApp.phoneNumberIcon,
                suffixOnPreesd: () {
                  inputTextController.userPhoneController.text == "";
                },
                onChanged: (a) {},
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 10.h),
              InputText(
                validator: (p0) {
                  return "";
                },
                controller: inputTextController.userAdresController,
                odscureText: false,
                hintTextMsg: inputTextController.userAdresController.text,
                suffixIcon: iconApp.removTextIcon,
                prefixIcon: iconApp.markerIcon,
                suffixOnPreesd: () {
                  inputTextController.userAdresController.text == "";
                },
                onChanged: (a) {},
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 10.h),
              InputText(
                validator: (passwerd) {
                  return "";
                },
                onChanged: (s) {},
                suffixOnPreesd: () {
                  inputTextController.userPasswerdController.text = "";
                },
                controller: inputTextController.userPasswerdController,
                odscureText: false,
                hintTextMsg: inputTextController.userPasswerdController.text,
                suffixIcon: iconApp.removTextIcon,
                prefixIcon: iconApp.passwedIcon,
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 10.h),
              HeroButton(
                onPressed: () {},
                text: "verify_otp_buttom_msg",
                svgIcon: "",
                isBorder: false,
                isIcon: false,
                widthSize: SizeApp.screenWidth! * 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
