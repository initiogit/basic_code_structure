import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../general_binding/common_binding.dart';

class AppRoutes {
  static const String initialRoutes = "/";
  static const String splash = "/splash";
  static const String home = "/home";
  static const String login = "/login";
  static const String dashboard = "/dashboard";

  static List<GetPage<dynamic>> get genratedRoutes => [
        GetPage(name: splash, page: () => const Placeholder()),
        GetPage(
            name: home,
            page: () => const Placeholder(),
            binding: CommonBinding()),
        GetPage(
            name: login,
            page: () => const Placeholder(),
            binding: CommonBinding()),
        GetPage(
          name: dashboard,
          page: () => const FlutterLogo(),
          binding: CommonBinding(),
        ),
      ];
}
