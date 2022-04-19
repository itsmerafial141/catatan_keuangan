import 'package:catatan_keuangan/app/values/colors.dart';
import 'package:catatan_keuangan/app/values/strings.dart';
import 'package:catatan_keuangan/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../screens/hpg_laporan_screen.dart';
import '../screens/hpg_pemasukan_screen.dart';
import '../screens/hpg_pengeluaran_screen.dart';

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
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Get.width),
                  color: MyColors.lightBllueAccent,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                    MyStrings.listAppbarTab.length,
                    (index) {
                      return Obx(
                        () => InkWell(
                          onTap: () {
                            controller.appBarTab.value = index;
                          },
                          borderRadius: BorderRadius.circular(Get.width),
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            width: controller
                                    .textSize(
                                      "Pengeluaran",
                                      TextStyle(
                                        fontFamily: MyFontFamily.Bold,
                                        fontSize: MyStyles.H6,
                                      ),
                                    )
                                    .width +
                                20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Get.width),
                              color: controller.appBarTab.value == index
                                  ? MyColors.white
                                  : Colors.transparent,
                            ),
                            child: Text(
                              MyStrings.listAppbarTab[index],
                              style: TextStyle(
                                fontFamily: controller.appBarTab.value == index
                                    ? MyFontFamily.Bold
                                    : MyFontFamily.Regular,
                                fontSize: MyStyles.H6,
                                color: controller.appBarTab.value == index
                                    ? MyColors.darkBlueAccent
                                    : MyColors.white,
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
            Obx(
              () => Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: controller.appBarTab.value == 0
                        ? HPGPengeluaranScreen()
                        : controller.appBarTab.value == 1
                            ? HPGPemasukanScreen()
                            : controller.appBarTab.value == 2
                                ? HPGLaporanScreen()
                                : HPGPengeluaranScreen(),
                  ),
                ),
              ),
            ),
            Container(
              height: Get.height * 0.13,
              width: Get.width,
              padding: EdgeInsets.all(15),
              color: MyColors.whiteGrey,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    MyColors.darkBlueAccent,
                  ),
                ),
                child: Text(
                  "Buat Catatan Baru",
                  style: TextStyle(
                    fontFamily: MyFontFamily.Bold,
                    fontSize: MyStyles.H5,
                    color: MyColors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
