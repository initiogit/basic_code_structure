import 'package:basic_code_structure/ui/components/common_size/common_hight_width.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'general_binding/common_binding.dart';
import 'routes/routes.dart';
import 'theme/get_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const GetMyApp());
}

class GetMyApp extends StatelessWidget {
  const GetMyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      AppDimensions.createInstance(context, SizerUtil.boxConstraints);
      AppDimensions.instance!.orientation =
          AppDimensions.update(context, SizerUtil.boxConstraints).orientation;
      AppDimensions.instance!.height =
          AppDimensions.update(context, SizerUtil.boxConstraints).height;
      AppDimensions.instance!.width =
          AppDimensions.update(context, SizerUtil.boxConstraints).width;
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
