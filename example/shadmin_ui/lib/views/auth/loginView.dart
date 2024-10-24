import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shadmin/shadmin.dart';

import '../../routes/appPages.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SHLoginBox(
        formKey: GlobalKey<FormState>(),
        logoUrl:
            "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        title: "Shadmin",
        onCreateAccount: () {
          Get.offAllNamed(Routes.REGISTER);
        },
        onForgotPassword: () {
          Get.offAllNamed(Routes.FORGOT_PASSWORD);
        },
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
        onLogin: () {
          Get.offAllNamed(Routes.HOME);
        },
        remember: true,
        onRememberMe: (val) {},
        onGoogleLogin: () {},
        onFacebookLogin: () {},
      ),
    );
  }
}
