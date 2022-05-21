import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:random_apis/app/theme/light_theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      theme: lightTheme(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
