import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:mars/bloc/onboeding_screen/onbording_bloc.dart';
import 'package:mars/core/color_app.dart';
import 'package:mars/core/size_app.dart';
import 'package:mars/functions/localization_function.dart';
import 'package:mars/screens/onbordeing_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mars/theme/theme_app_data.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeApp().init(context);
    FlutterNativeSplash.remove();

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          // project app name
          title: "Mars Store",

          // localization data
          supportedLocales: localizationFunction.supportedLocales,
          localizationsDelegates: localizationFunction.localizationsDelegates,
          localeResolutionCallback: (deviceLocale, supportedLocales) =>
              localizationFunction.localizationFunction(
            deviceLocale,
            supportedLocales,
          ),

          // theme app data
          theme: themeAppData.thmeAppData(),
          themeMode: ColorApp.moodApp ? ThemeMode.light : ThemeMode.dark,

          // build app screen
          home: child,
        );
      },

      // root start app
      child: BlocProvider(
        create: (context) => OnbordingBloc(),
        child: const OnbordeingScreen(),
      ),
    );
  }
}
