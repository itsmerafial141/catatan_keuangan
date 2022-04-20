import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';

class HPGButtonPengeluaranWidget extends StatelessWidget {
  const HPGButtonPengeluaranWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.13,
      width: Get.width,
      padding: EdgeInsets.all(15),
      color: MyColors.whiteGrey,
      child: ElevatedButton(
        onPressed: onPressed,
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
    );
  }
}
