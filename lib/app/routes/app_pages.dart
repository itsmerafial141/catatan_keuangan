import 'package:get/get.dart';

import 'package:catatan_keuangan/app/modules/home/bindings/home_binding.dart';
import 'package:catatan_keuangan/app/modules/home/views/home_view.dart';
import 'package:catatan_keuangan/app/modules/tambah_catatan/bindings/tambah_catatan_binding.dart';
import 'package:catatan_keuangan/app/modules/tambah_catatan/views/tambah_catatan_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL_H = Routes.HOME;
  static const INITIAL_TC = Routes.TAMBAH_CATATAN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TAMBAH_CATATAN,
      page: () => TambahCatatanView(),
      binding: TambahCatatanBinding(),
    ),
  ];
}
