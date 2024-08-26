import 'package:flutter/material.dart';
import 'package:mars/functions/otp_functions.dart';
import 'package:mars/widgets/input_otp.dart';

class OtpFormInfo extends StatelessWidget {
  const OtpFormInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InpotOtp(
          validator: (otp1) => otpFunctions.validatorOtp1(otp1, context),
        ),
        InpotOtp(
          validator: (otp2) => otpFunctions.validatorOtp2(otp2, context),
        ),
        InpotOtp(
          validator: (otp3) => otpFunctions.validatorOtp3(otp3, context),
        ),
        InpotOtp(
          validator: (otp4) => otpFunctions.validatorOtp4(otp4, context),
        ),
      ],
    );
  }
}
