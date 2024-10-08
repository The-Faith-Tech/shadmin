import 'package:get/get.dart';
import 'package:shadmin_ui/views/auth/forgotPasswordView.dart';
import 'package:shadmin_ui/views/auth/lockScreenView.dart';
import 'package:shadmin_ui/views/auth/loginView.dart';
import 'package:shadmin_ui/views/auth/registerView.dart';
import 'package:shadmin_ui/views/auth/resetPasswordView.dart';
import 'package:shadmin_ui/views/crud/createNewView.dart';
import 'package:shadmin_ui/views/crud/tableView.dart';
import 'package:shadmin_ui/views/navView.dart';

import '../bindings/navBinding.dart';
import '../views/button/buttonsView.dart';

part 'appRoutes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const NavView(),
      binding: NavBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginView(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => const RegisterView(),
    ),
    GetPage(
      name: Routes.FORGOT_PASSWORD,
      page: () => const ForgotPasswordView(),
    ),
    GetPage(
      name: Routes.RESET_PASSWORD,
      page: () => const ResetPasswordView(),
    ),
    GetPage(
      name: Routes.LOCK_SCREEN,
      page: () => const LockScreenView(),
    ),
    GetPage(
      name: Routes.CREATE_NEW,
      page: () => const CreateNewView(),
    ),
    GetPage(
      name: Routes.GET_ALL,
      page: () => const TableView(),
    ),
    GetPage(
      name: Routes.BUTTONS,
      page: () => const SHButtonsView(),
    ),
  ];
}
