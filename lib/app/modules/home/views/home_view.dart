import 'package:catatan_keuangan/app/values/colors.dart';
import 'package:catatan_keuangan/app/values/strings.dart';
import 'package:catatan_keuangan/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        title: Text(
          "Catatan Keuangan",
          style: TextStyle(
            fontFamily: MyFontFamily.Bold,
            fontSize: MyStyles.H4,
            color: MyColors.white,
          ),
        ),
        backgroundColor: MyColors.blueAccent,
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.center,
              color: MyColors.blueAccent,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Get.width),
                  color: MyColors.lightBllueAccent,
                ),
                child: Row(
                  children: List.generate(
                    MyStrings.listAppbarTab.length,
                    (index) {
                      return Obx(
                        () => Expanded(
                          child: InkWell(
                            onTap: () {
                              controller.appBarTab.value = index;
                            },
                            borderRadius: BorderRadius.circular(Get.width),
                            child: Container(
                              width: 120,
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Get.width),
                                color: controller.appBarTab.value == index
                                    ? MyColors.white
                                    : Colors.transparent,
                              ),
                              child: Text(
                                MyStrings.listAppbarTab[index],
                                style: TextStyle(
                                  fontFamily: MyFontFamily.Bold,
                                  fontSize: MyStyles.H6,
                                  color: controller.appBarTab.value == index
                                      ? MyColors.darkBlueAccent
                                      : MyColors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
