import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mars/components/info_user_orgnal.dart';
import 'package:mars/components/info_user_passwerd.dart';
import 'package:mars/components/snig_up_button.dart';
import 'package:mars/controllers/input_text_controller.dart';
import 'package:mars/core/color_app.dart';
import 'package:mars/core/icon_app.dart';
import 'package:mars/core/image_app.dart';
import 'package:mars/core/size_app.dart';
import 'package:mars/functions/intro_functions.dart';
import 'package:mars/functions/login_functions.dart';
import 'package:mars/functions/navgater_function.dart';
import 'package:mars/screens/forget_passwerd_screen.dart';
import 'package:mars/style/style_text_button.dart';
import 'package:mars/style/style_text_description.dart';
import 'package:mars/widgets/card_image.dart';
import 'package:mars/widgets/divider_text.dart';
import 'package:mars/widgets/hero_button.dart';
import 'package:mars/widgets/logo_box_mars.dart';
import 'package:mars/widgets/text_localization.dart';

class LoginsScreen extends StatelessWidget {
  const LoginsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: Form(
        key: loginFunctions.loginFormKey,
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

              // inpout user account address
              InfoUserOrgnal(
                validator: (value) =>
                    loginFunctions.validatorUserAccount(value, context),
              ),
              SizedBox(height: 15.h),

              // inpout user passwerd
              InfoUserPasswerd(
                hintTextMsg: "hint_user_passwerd_msg",
                controller: inputTextController.userPasswerdController,
                validator: (value) =>
                    loginFunctions.validatorLoginPasswerd(value, context),
              ),

              // forget passwerd
              TextButton(
                onPressed: () => navgaterFunction(
                  context,
                  const ForgetPasswerdScreen(),
                ),
                child: TextLocalization(
                  text: "forgot_basswerd_msg",
                  style: styleTextButton(),
                ),
              ),

              // login button
              HeroButton(
                onPressed: () => loginFunctions.loginbutton(context),
                widthSize: SizeApp.screenWidth! * 1,
                text: "login_batton_msg",
                svgIcon: iconApp.loginIcon,
                isBorder: false,
                isIcon: true,
              ),
              SizedBox(height: 40.h),

              // or continue with
              const DividerText(text: "or_continue_with_msg"),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // continue with google
                  CardWithImage(
                    onPressed: () => loginFunctions.goToSignGoogle(context),
                    imagePath: imageApp.googleLogo,
                  ),
                  SizedBox(width: 25.w),
                  // continue with facebook
                  CardWithImage(
                    onPressed: () => loginFunctions.goToSignFacebook(context),
                    imagePath: imageApp.facebookLogo,
                  ),
                ],
              ),
              SizedBox(height: 15.h),

              // sing up text batton
              SnigUpButton(
                onPressed: () => introFunctions.goToRegister(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
