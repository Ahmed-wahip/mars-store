import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mars/bloc/navgater_bar/navigator_bloc.dart';
import 'package:mars/controllers/input_text_controller.dart';
import 'package:mars/core/icon_app.dart';
import 'package:mars/core/image_app.dart';
import 'package:mars/core/localizations_app.dart';
import 'package:mars/functions/show_error_dialog.dart';
import 'package:mars/functions/user_name.dart';
import 'package:mars/src/mars_app.dart';
import 'package:mars/widgets/snack_bar_error.dart';
import 'navgater_function.dart';

class OtpFunctions {
  final GlobalKey<FormState> otpFormKey = GlobalKey<FormState>();
  String? errorText;
  bool showSend = false;

  String formatPhoneNumber() {
    // Convert a number into a list of numbers
    List<int> numbers = inputTextController.userPhoneController.text
        .split('')
        .map(int.parse)
        .toList();

    // Extract the required parts
    String firstFive = numbers.sublist(0, 6).join('');
    String lastNumber = numbers.sublist(9, 11).join('');

    // Display format (you can change the format as needed)
    // hint namper

    return '$firstFive***$lastNumber';
  }

  String? validatorOtp1(value, BuildContext context) {
    if (value == null || value.isEmpty) {
      errorText = "chek_otp_msg".tr(context);
      return errorText;
    }
    return null;
  }

  String? validatorOtp2(value, BuildContext context) {
    if (value == null || value.isEmpty) {
      errorText = "chek_otp_msg".tr(context);
      return errorText;
    }
    return null;
  }

  String? validatorOtp3(value, BuildContext context) {
    if (value == null || value.isEmpty) {
      errorText = "chek_otp_msg".tr(context);
      return errorText;
    }
    return null;
  }

  String? validatorOtp4(value, BuildContext context) {
    if (value == null || value.isEmpty) {
      errorText = "chek_otp_msg".tr(context);
      return errorText;
    }
    return null;
  }

  void verifyOtpButtoun(BuildContext context) async {
    if (otpFormKey.currentState!.validate()) {
      showErrorDialog(
        context,
        imageApp.checkCorrect,
        "correct_email_msg".tr(context),
        "${"welcome_user_msg".tr(context)} ${extractFirstName()}",
        false,
      );
      await Future.delayed(const Duration(seconds: 5));
      navgaterFunction(
        context,
        BlocProvider(
          create: (context) => NavigatorBarBloc(),
          child: const MarsApp(),
        ),
      );
    } else {
      if (inputTextController.otp1Controller.text == "" &&
          inputTextController.otp2Controller.text == "" &&
          inputTextController.otp3Controller.text == "" &&
          inputTextController.otp4Controller.text == "") {
        errorText = "enter_all_data_msg".tr(context);
        showErrorDialog(
          context,
          imageApp.chekError,
          errorText!,
          "",
          true,
        );
      } else {
        showErrorDialog(
          context,
          imageApp.chekError,
          errorText!,
          "",
          true,
        );
      }
    }
  }

  void hinSendAgin(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      snackBarError("waiting_msg", iconApp.infoIcon),
    );
  }

  void aginSendOtp() {}
}

OtpFunctions otpFunctions = OtpFunctions();
