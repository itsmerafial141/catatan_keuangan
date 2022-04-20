import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/values/colors.dart';

void main() {
  runApp(
    AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.blueAccent, //set as per your  status bar color
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness:
            Brightness.light, //set as per your status bar icons' color
        systemNavigationBarColor:
            MyColors.black, //set as per your navigation bar color
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: GetMaterialApp(
        title: "Catatan Keuangan",
        initialRoute: AppPages.INITIAL_H,
        getPages: AppPages.routes,
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
