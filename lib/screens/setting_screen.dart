import 'package:flutter/material.dart';
import 'package:mars/components/info_settenig_items.dart';
import 'package:mars/components/mood_app_button.dart';
import 'package:mars/core/color_app.dart';
import 'package:mars/core/icon_app.dart';
import 'package:mars/custom/custom_titel_bar.dart';
import 'package:mars/functions/navgater_function.dart';
import 'package:mars/screens/person_setting_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        color: ColorApp.backgroundColor,
        child: Column(
          children: [
            const CustomTitelBar(text: "setting_titel_msg"),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // mood app
                    MoodAppButton(
                      onPressed: () {},
                    ),

                    // the language
                    InfoSettenigItems(
                      onPressed: () {},
                      titel: "language_app_setting_msg",
                      icon: iconApp.languageIcon,
                    ),

                    // mars faceBook page
                    InfoSettenigItems(
                      onPressed: () {},
                      titel: "msrs_faceBook_page_msg",
                      icon: iconApp.faceBookIcon,
                    ),

                    // mars Instagram page
                    InfoSettenigItems(
                      onPressed: () {},
                      titel: "msrs_instagram_page_msg",
                      icon: iconApp.instagramIcon,
                    ),

                    // mars whatsApp group
                    InfoSettenigItems(
                      onPressed: () {},
                      titel: "msrs_whatsApp_group_msg",
                      icon: iconApp.whatsAppIcon,
                    ),

                    // mars telegram group
                    InfoSettenigItems(
                      onPressed: () {},
                      titel: "msrs_telegram_group_msg",
                      icon: iconApp.telegramIcon,
                    ),

                    // shere mars app
                    InfoSettenigItems(
                      onPressed: () {},
                      titel: "share_mars_application_msg",
                      icon: iconApp.sharIcon,
                    ),

                    // shere mars app
                    InfoSettenigItems(
                      onPressed: () {
                        navgaterFunction(context, const PersonSettingScreen());
                      },
                      titel: "persin_titel_msg",
                      icon: iconApp.personIcon,
                    ),

                    // log out
                    InfoSettenigItems(
                      onPressed: () {},
                      titel: "log_out_msg",
                      icon: iconApp.logoutIcon,
                    ),

                    // About the mars app
                    InfoSettenigItems(
                      onPressed: () {},
                      titel: "about_mars_msg",
                      icon: iconApp.infoIcon,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
