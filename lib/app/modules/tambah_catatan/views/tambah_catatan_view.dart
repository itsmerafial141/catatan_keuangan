// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:catatan_keuangan/app/values/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../values/strings.dart';
import '../../../values/styles.dart';
import '../controllers/tambah_catatan_controller.dart';

class TambahCatatanView extends GetView<TambahCatatanController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.blueAccent,
        elevation: 0,
        title: Text(
          "Tambah Catatan",
          style: TextStyle(
            fontFamily: MyFontFamily.Bold,
            fontSize: MyStyles.H5,
            color: MyColors.white,
          ),
        ),
        centerTitle: true,
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
                    MyStrings.listTabTambahCatatan.length,
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
                                Get.width * 0.2,
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
            Expanded(
              child: Obx(
                () => SingleChildScrollView(
                  child: controller.appBarTab.value == 0
                      ? TBCPengeluaranScreen()
                      : controller.appBarTab.value == 1
                          ? TBCPemasukanScreen()
                          : TBCPengeluaranScreen(),
                ),
              ),
            ),
            Container(
              height: Get.height * 0.08,
              margin: EdgeInsets.all(20),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration: BoxDecoration(
                    color: MyColors.darkBlueAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Simpan",
                    style: TextStyle(
                      fontFamily: MyFontFamily.Bold,
                      fontSize: MyStyles.H4,
                      color: MyColors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TBCPemasukanScreen extends GetView<TambahCatatanController> {
  const TBCPemasukanScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        TCTTextFieldWidget(
          textController: controller.controllerJumlah,
          icon: Icons.money_rounded,
          label: "Jumlah",
          hintText: "",
          usePreffix: true,
          preffixIcon: Text(
            "Rp",
            style: TextStyle(
              fontFamily: MyFontFamily.Bold,
              fontSize: MyStyles.H3,
              color: MyColors.black,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        TCTTextButtonWidget(
          ontap: () {},
          suffixIcon: Icons.auto_awesome_mosaic_outlined,
          label: "Kategori",
          text: "Pilih Kategori",
          prffixIcon: Icons.keyboard_arrow_right_sharp,
        ),
        SizedBox(
          height: 30,
        ),
        TCTTextButtonWidget(
          ontap: () {},
          suffixIcon: Icons.date_range_rounded,
          label: "Tanggal",
          text: "Pilih tanggal",
          prffixIcon: Icons.keyboard_arrow_right_sharp,
        ),
        SizedBox(
          height: 30,
        ),
        TCTTextFieldWidget(
          textController: controller.controllerNote,
          icon: Icons.copy_rounded,
          label: "Note",
          usePreffix: false,
          hintText: "(Optional)",
        ),
      ],
    );
  }
}

class TBCPengeluaranScreen extends GetView<TambahCatatanController> {
  const TBCPengeluaranScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        TCTTextFieldWidget(
          textController: controller.controllerJumlah,
          icon: Icons.money_rounded,
          label: "Jumlah",
          hintText: "",
          usePreffix: true,
          preffixIcon: Text(
            "Rp",
            style: TextStyle(
              fontFamily: MyFontFamily.Bold,
              fontSize: MyStyles.H3,
              color: MyColors.black,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        TCTTextButtonWidget(
          ontap: () {},
          suffixIcon: Icons.auto_awesome_mosaic_outlined,
          label: "Kategori",
          text: "Pilih Kategori",
          prffixIcon: Icons.keyboard_arrow_right_sharp,
        ),
        SizedBox(
          height: 30,
        ),
        TCTTextButtonWidget(
          ontap: () {},
          suffixIcon: Icons.date_range_rounded,
          label: "Tanggal",
          text: "Pilih tanggal",
          prffixIcon: Icons.keyboard_arrow_right_sharp,
        ),
        SizedBox(
          height: 30,
        ),
        TCTTextButtonWidget(
          ontap: () {},
          suffixIcon: Icons.account_balance_wallet_outlined,
          label: "Pembayaran",
          text: "Pilih Pembayaran",
          prffixIcon: Icons.keyboard_arrow_right_sharp,
        ),
        SizedBox(
          height: 30,
        ),
        TCTTextFieldWidget(
          textController: controller.controllerNote,
          icon: Icons.copy_rounded,
          label: "Note",
          usePreffix: false,
          hintText: "(Optional)",
        )
      ],
    );
  }
}

class TCTTextButtonWidget extends StatelessWidget {
  const TCTTextButtonWidget({
    Key? key,
    required this.suffixIcon,
    required this.label,
    required this.text,
    required this.prffixIcon,
    required this.ontap,
  }) : super(key: key);

  final Function() ontap;
  final IconData suffixIcon;
  final String label;
  final String text;
  final IconData prffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: ontap,
        child: Container(
          color: MyColors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    suffixIcon,
                    color: MyColors.darkBlueAccent,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Text(
                          label,
                          style: TextStyle(
                            fontFamily: MyFontFamily.Bold,
                            fontSize: MyStyles.H6,
                            color: MyColors.black,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Text(
                                text,
                                style: TextStyle(
                                  fontFamily: MyFontFamily.Bold,
                                  fontSize: MyStyles.H3,
                                  color: MyColors.black,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                prffixIcon,
                                color: MyColors.darkBlueAccent,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 1,
                color: MyColors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TCTTextFieldWidget extends GetView<TambahCatatanController> {
  const TCTTextFieldWidget({
    Key? key,
    required this.textController,
    required this.icon,
    required this.label,
    this.preffixIcon,
    required this.usePreffix,
    required this.hintText,
  }) : super(key: key);

  final TextEditingController textController;
  final IconData icon;
  final String label;
  final preffixIcon;
  final bool usePreffix;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: MyColors.darkBlueAccent,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Stack(
                  children: [
                    Text(
                      label,
                      style: TextStyle(
                        fontFamily: MyFontFamily.Bold,
                        fontSize: MyStyles.H6,
                        color: MyColors.black,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: TextField(
                        controller: textController,
                        cursorColor: MyColors.black,
                        style: TextStyle(
                          fontFamily: MyFontFamily.Bold,
                          fontSize: MyStyles.H3,
                          color: MyColors.black,
                        ),
                        keyboardType: TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                        decoration: usePreffix == true
                            ? InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: preffixIcon,
                                prefixIconConstraints: BoxConstraints(
                                  minWidth: 0,
                                  minHeight: 0,
                                ),
                                hintText: hintText,
                                hintStyle: TextStyle(
                                  fontFamily: MyFontFamily.Bold,
                                  fontSize: MyStyles.H3,
                                  color: MyColors.black,
                                ),
                              )
                            : InputDecoration(
                                border: InputBorder.none,
                                hintText: hintText,
                                hintStyle: TextStyle(
                                  fontFamily: MyFontFamily.Bold,
                                  fontSize: MyStyles.H3,
                                  color: MyColors.black,
                                ),
                              ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 1,
            color: MyColors.grey,
          )
        ],
      ),
    );
  }
}
