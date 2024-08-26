import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mars/components/info_user_passwerd.dart';
import 'package:mars/controllers/input_text_controller.dart';
import 'package:mars/core/icon_app.dart';
import 'package:mars/core/size_app.dart';
import 'package:mars/functions/register_function.dart';
import 'package:mars/style/style_text_description.dart';
import 'package:mars/widgets/hero_button.dart';
import 'package:mars/widgets/input_text.dart';
import 'package:mars/widgets/logo_box_mars.dart';
import 'package:mars/widgets/text_localization.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFunction.regidterFormKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40.h),
            // logo app
            const LogoBoxMars(),
            SizedBox(height: 40.h),

            // welcome titel
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.r),
              child: TextLocalization(
                text: "welcome_loginScreen_msg",
                style: styleTextDescription(),
              ),
            ),
            SizedBox(height: 15.h),

            // inpout user name
            InputText(
              validator: (userNmae) =>
                  registerFunction.validatorRegisterUserName(userNmae, context),
              onChanged: (s) {},
              suffixOnPreesd: () {
                inputTextController.userNameController.text = "";
              },
              controller: inputTextController.userNameController,
              odscureText: false,
              hintTextMsg: "hint_user_name_msg",
              suffixIcon: iconApp.removTextIcon,
              prefixIcon: iconApp.personIcon,
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 15.h),

            // inpout user emil adres
            InputText(
              validator: (userEmail) =>
                  registerFunction.validatorRegisterEmail(userEmail, context),
              onChanged: (s) {},
              suffixOnPreesd: () {
                inputTextController.userEmailController.text = "";
              },
              controller: inputTextController.userEmailController,
              odscureText: false,
              hintTextMsg: "hint_user_email_msg",
              suffixIcon: iconApp.removTextIcon,
              prefixIcon: iconApp.emailIcon,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 15.h),
            // inpout user phone number
            InputText(
              validator: (phoneNumber) => registerFunction
                  .validatorRegisterPhoneNumber(phoneNumber, context),
              onChanged: (s) {},
              suffixOnPreesd: () {
                inputTextController.userPhoneController.text = "";
              },
              controller: inputTextController.userPhoneController,
              odscureText: false,
              hintTextMsg: "hint_user_phone_number_msg",
              suffixIcon: iconApp.removTextIcon,
              prefixIcon: iconApp.phoneNumberIcon,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 15.h),
            // inpout user passwerd
            InputText(
              validator: (passwerd) =>
                  registerFunction.validatorRegisterPasswerd(passwerd, context),
              onChanged: (s) {},
              suffixOnPreesd: () {
                inputTextController.userPasswerdController.text = "";
              },
              controller: inputTextController.userPasswerdController,
              odscureText: false,
              hintTextMsg: "hint_user_passwerd_msg",
              suffixIcon: iconApp.removTextIcon,
              prefixIcon: iconApp.passwedIcon,
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 15.h),
            // inpout agin passwerd
            InfoUserPasswerd(
              hintTextMsg: "hint_agin_passwerd_msg",
              controller: inputTextController.passwerdAgainController,
              validator: (value) => registerFunction
                  .validatorRegisterAgenPasswerd(value, context),
            ),
            SizedBox(height: 15.h),
            // register button
            HeroButton(
              onPressed: () => registerFunction.registerButton(context),
              widthSize: SizeApp.screenWidth! * 1,
              text: "register_now_msg",
              svgIcon: iconApp.loginIcon,
              isBorder: false,
              isIcon: true,
            )
          ],
        ),
      ),
    );
  }
}
