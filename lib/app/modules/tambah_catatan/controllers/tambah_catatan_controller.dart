import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TambahCatatanController extends GetxController {
  var appBarTab = 0.obs;

  late TextEditingController controllerJumlah;
  late TextEditingController controllerKategori;
  late TextEditingController controllerTanggal;
  late TextEditingController controllerPembayaran;
  late TextEditingController controllerNote;

  Size textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }

  @override
  void onInit() {
    super.onInit();
    controllerJumlah = TextEditingController();
    controllerKategori = TextEditingController();
    controllerTanggal = TextEditingController();
    controllerPembayaran = TextEditingController();
    controllerNote = TextEditingController();
  }
}
