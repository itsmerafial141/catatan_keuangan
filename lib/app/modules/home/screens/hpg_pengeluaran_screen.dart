import 'dart:math' as math;
import 'package:catatan_keuangan/app/modules/home/controllers/home_controller.dart';
import 'package:catatan_keuangan/app/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';

class HPGLaporanScreen extends GetView<HomeController> {
  const HPGLaporanScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.whiteGrey,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            color: MyColors.white,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Siklus laporan kamu saat ini :",
                        style: TextStyle(
                          fontFamily: MyFontFamily.Regular,
                          fontSize: MyStyles.H6,
                          color: MyColors.black,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Tanggal 1",
                        style: TextStyle(
                          fontFamily: MyFontFamily.Regular,
                          fontSize: MyStyles.H7,
                          color: MyColors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 2,
                          color: MyColors.darkBlueAccent,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Ubah Siklus",
                        style: TextStyle(
                          fontFamily: MyFontFamily.Bold,
                          fontSize: MyStyles.H5,
                          color: MyColors.darkBlueAccent,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: MyColors.darkBlueAccent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 1,
                        color: MyColors.darkBlueAccent,
                      ),
                    ),
                    child: Obx(
                      () => Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: List.generate(
                          MyStrings.listLaporanTabMenu.length,
                          (index) {
                            return Expanded(
                              child: InkWell(
                                onTap: () {
                                  controller.laporanTab.value = index;
                                },
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: controller.laporanTab.value == index
                                        ? MyColors.white
                                        : MyColors.darkBlueAccent,
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    MyStrings.listLaporanTabMenu[index],
                                    style: TextStyle(
                                      fontFamily:
                                          controller.laporanTab.value == index
                                              ? MyFontFamily.Bold
                                              : MyFontFamily.Regular,
                                      fontSize: MyStyles.H6,
                                      color:
                                          controller.laporanTab.value == index
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
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Selisih",
                    style: TextStyle(
                      fontFamily: MyFontFamily.Bold,
                      fontSize: MyStyles.H7,
                      color: MyColors.darkBlueAccent,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "-Rp${math.Random().nextInt(999)}.${math.Random().nextInt(999)}.${math.Random().nextInt(999)}",
                    style: TextStyle(
                      fontFamily: MyFontFamily.Bold,
                      fontSize: MyStyles.H4,
                      color: MyColors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 1.5,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  color: MyColors.grey50,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Get.width),
                          color: MyColors.darkBlueAccent,
                        ),
                        child: Icon(
                          Icons.account_balance_wallet_outlined,
                          color: MyColors.white,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pemasukan",
                              style: TextStyle(
                                fontFamily: MyFontFamily.Bold,
                                fontSize: MyStyles.H7,
                                color: MyColors.darkBlueAccent,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Rp${math.Random().nextInt(999)}.${math.Random().nextInt(999)}.${math.Random().nextInt(999)}",
                              style: TextStyle(
                                fontFamily: MyFontFamily.Bold,
                                fontSize: MyStyles.H7,
                                color: MyColors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1.5,
                        height: 30,
                        color: MyColors.grey50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Get.width),
                          color: MyColors.darkBlueAccent,
                        ),
                        child: Icon(
                          Icons.money_off_csred_rounded,
                          color: MyColors.white,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pengeluaran",
                              style: TextStyle(
                                fontFamily: MyFontFamily.Bold,
                                fontSize: MyStyles.H7,
                                color: MyColors.darkBlueAccent,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "-Rp${math.Random().nextInt(999)}.${math.Random().nextInt(999)}.${math.Random().nextInt(999)}",
                              style: TextStyle(
                                fontFamily: MyFontFamily.Bold,
                                fontSize: MyStyles.H7,
                                color: MyColors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) {
              return Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: MyColors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Get.width),
                        color: MyColors.whiteGrey,
                      ),
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        color: MyColors.darkBlueAccent,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                MyStrings.listLaporanPengeluaran[
                                    math.Random().nextInt(
                                  MyStrings.listLaporanPengeluaran.length,
                                )],
                                style: TextStyle(
                                  fontFamily: MyFontFamily.Bold,
                                  fontSize: MyStyles.H6,
                                  color: MyColors.black,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Rp${math.Random().nextInt(999)}.${math.Random().nextInt(999)}.${math.Random().nextInt(999)}",
                                style: TextStyle(
                                  fontFamily: MyFontFamily.Bold,
                                  fontSize: MyStyles.H7,
                                  color: MyColors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Get.width),
                            ),
                            child: Container(
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Get.width),
                                gradient: LinearGradient(
                                  colors: [
                                    MyColors.lightBllueAccent,
                                    MyColors.blueAccent,
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${math.Random().nextInt(30)} Feb 2022 - ${math.Random().nextInt(30)} Apr 2022",
                            style: TextStyle(
                              fontFamily: MyFontFamily.Regular,
                              fontSize: MyStyles.H6,
                              color: MyColors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (_, __) {
              return SizedBox(
                height: 10,
              );
            },
            itemCount: 4,
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
