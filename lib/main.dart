import 'package:basic_code_structure/ui/components/common_size/common_hight_width.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    return LayoutBuilder(builder: (context, constraints) {
      AppDimensions.createInstance(context, constraints);
      AppDimensions.instance!.orientation = AppDimensions.update(context, constraints).orientation;
      AppDimensions.instance!.height = AppDimensions.update(context, constraints).height;
      AppDimensions.instance!.width = AppDimensions.update(context, constraints).width;
      return GetMaterialApp(
        theme: NkGetXTheme.lightTheme,
        darkTheme: NkGetXTheme.lightTheme,
        getPages: AppRoutes.genratedRoutes,
        initialRoute: AppRoutes.splash,
        themeMode: ThemeMode.system,
        initialBinding: CommonBinding(),
        debugShowCheckedModeBanner: false,
      );
    });
  }
}
