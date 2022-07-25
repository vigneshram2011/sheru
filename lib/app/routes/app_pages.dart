// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:login_get_cli_app/app/modules/birthday/views/birthday_view.dart';
import '../modules/address/bindings/address_binding.dart';
import '../modules/address/views/address_view.dart';
import '../modules/birthday/bindings/birthday_binding.dart';
import '../modules/code/bindings/code_binding.dart';
import '../modules/code/views/code_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/name/bindings/name_binding.dart';
import '../modules/name/views/name_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/ssn/bindings/ssn_binding.dart';
import '../modules/ssn/views/ssn_view.dart';
import '../modules/username/bindings/username_binding.dart';
import '../modules/username/views/username_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // static const INITIAL = Routes.SPLASH;
  static const INITIAL = Routes.CODE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.USERNAME,
      page: () => const UsernameView(),
      binding: UsernameBinding(),
    ),
    GetPage(
      name: _Paths.CODE,
      page: () => const CodeView(),
      binding: CodeBinding(),
    ),
    GetPage(
      name: _Paths.NAME,
      page: () => const NameView(),
      binding: NameBinding(),
    ),
    GetPage(
      name: _Paths.BIRTHDAY,
      page: () => const BirthdayView(),
      binding: BirthdayBinding(),
    ),
    GetPage(
      name: _Paths.ADDRESS,
      page: () => const AddressView(),
      binding: AddressBinding(),
    ),
    GetPage(
      name: _Paths.SSN,
      page: () => const SsnView(),
      binding: SsnBinding(),
    ),
  ];
}
