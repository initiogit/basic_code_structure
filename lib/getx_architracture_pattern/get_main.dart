import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

import 'components/common_size/common_hight_width.dart';
import 'general_binding/common_binding.dart';
import 'routes/routes.dart';
import 'theme/get_theme.dart';

void main() {
  runApp(const GetMyApp());
}

class GetMyApp extends StatelessWidget {
  const GetMyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) {
        AppDimensions.instance!.height;
        AppDimensions.instance!.width;
        return ResponsiveWrapper.builder(
            ClampingScrollWrapper.builder(context, child!),
            maxWidth: MediaQuery.of(context).size.width,
            minWidth: 450,
            maxWidthLandscape: 450,
            defaultScale: true,
            debugLog: true,
            mediaQueryData: MediaQuery.of(context),
            breakpoints: [
              /// ADJUST DISPLAY BREAKPOINTS
              const ResponsiveBreakpoint.autoScale(600, name: MOBILE),
              const ResponsiveBreakpoint.autoScale(900, name: TABLET),
              const ResponsiveBreakpoint.resize(800, name: DESKTOP),
              const ResponsiveBreakpoint.resize(1200, name: "4K"),
            ],
            background: Container(color: Get.theme.scaffoldBackgroundColor));
      },
      theme: NkGetXTheme.lightTheme,
      darkTheme: NkGetXTheme.lightTheme,
      getPages: AppRoutes.genratedRoutes,
      initialRoute: AppRoutes.splash,
      themeMode: ThemeMode.system,
      initialBinding: CommonBinding(),
      debugShowCheckedModeBanner: false,
    );
  }
}
