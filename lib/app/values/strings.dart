import 'package:catatan_keuangan/app/values/colors.dart';
import 'package:flutter/material.dart';

class MyStrings {
  // Homepage
  static List<String> listAppbarTab = [
    "Pengeluaran",
    "Pemasukan",
    "Laporan",
  ];

  static List listRandomeTransaction = [1, 4, 2, 3, 6, 3, 6, 8, 2, 1, 2, 1];
  static List listLaporanTabMenu = [
    "Bulan ini",
    "Bulan Lalu",
    "3 Bulan",
  ];

  static List listLaporanPengeluaran = [
    "Belanja",
    "Pengeluaran",
    "Pemasukan",
    "Open BO",
  ];

  static List<Widget> listLaporanIconPengeluaran = [
    Icon(
      Icons.shopping_bag_outlined,
      color: MyColors.darkBlueAccent,
    ),
    Icon(
      Icons.add_a_photo_outlined,
      color: MyColors.darkBlueAccent,
    ),
  ];

  // Tambah Catatan
  static var listTabTambahCatatan = [
    "Pengeluaran",
    "Pemasukan",
  ];

  static var listIconTextFieldTambahCatatan = [
    Icons.money_off_rounded,
    Icons.auto_awesome_mosaic_outlined,
    Icons.date_range_rounded,
    Icons.payments_outlined,
    Icons.note_outlined,
  ];

  static var listLabelTextFieldCatatanPembayaran = [
    "Jumlah",
    "Kategori",
    "Tanggal",
    "Pembayaran",
    "Note",
  ];

  static var listHintTextFieldCatatanKeuangan = [
    "Rp",
    "Pilih Kategori",
    "Pilih Tangagl",
    "Pilih Pembayaran",
    "Opsional",
  ];
}
