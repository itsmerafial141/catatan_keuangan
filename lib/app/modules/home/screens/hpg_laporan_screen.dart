import 'dart:math' as math;
import 'package:catatan_keuangan/app/modules/home/controllers/home_controller.dart';
import 'package:catatan_keuangan/app/values/colors.dart';
import 'package:catatan_keuangan/app/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/styles.dart';

class HPGPengeluaranScreen extends GetView<HomeController> {
  const HPGPengeluaranScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.whiteGrey,
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (_, index) {
          return Container(
            color: MyColors.white,
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "${math.Random().nextInt(30)} Apr 2022",
                          style: TextStyle(
                            fontFamily: MyFontFamily.Bold,
                            fontSize: MyStyles.H5,
                            color: MyColors.darkBlueAccent,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "-Rp${math.Random().nextInt(999)}.${math.Random().nextInt(999)}",
                          style: TextStyle(
                            fontFamily: MyFontFamily.Bold,
                            fontSize: MyStyles.H5,
                            color: MyColors.darkBlueAccent,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: List.generate(
                        MyStrings.listRandomeTransaction[math.Random().nextInt(
                          MyStrings.listRandomeTransaction.length,
                        )],
                        (index) {
                          return Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: MyColors.whiteGrey,
                                      borderRadius:
                                          BorderRadius.circular(Get.width),
                                    ),
                                    child: Icon(
                                      Icons.account_balance_wallet_outlined,
                                      color: MyColors.darkBlueAccent,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Dompet Digital",
                                        style: TextStyle(
                                          fontFamily: MyFontFamily.Bold,
                                          fontSize: MyStyles.H5,
                                          color: MyColors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "ShopeePay - 08${math.Random().nextInt(999999999)}",
                                        style: TextStyle(
                                          fontFamily: MyFontFamily.Regular,
                                          fontSize: MyStyles.H5,
                                          color: MyColors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Text(
                                    "-Rp${math.Random().nextInt(99)}.${math.Random().nextInt(999)}",
                                    style: TextStyle(
                                      fontFamily: MyFontFamily.Regular,
                                      fontSize: MyStyles.H5,
                                      color: MyColors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: double.infinity,
                                height: 1,
                                color: MyColors.whiteGrey,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          );
                        },
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
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
    );
  }
}
