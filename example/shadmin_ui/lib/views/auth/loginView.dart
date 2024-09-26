import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shadmin/shadmin.dart';

import '../../routes/appPages.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                FlutterLogo(
                  size: ks11.w,
                ),
                khsSmall,
                SHText(
                  "Shadmin",
                  size: ks7.spMin,
                ),
              ],
            ),
          ),
          kvsb6,
          Container(
            width: 600.w,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(horizontal: khs13, vertical: kvs12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    SHText.heading("Log in"),
                    const Spacer(),
                    SHText("or"),
                    SHTextBtn(
                      label: "Create an Account",
                      onPressed: () {
                        Get.offAllNamed(Routes.REGISTER);
                      },
                    ),
                  ],
                ),
                kvsb3,
                SHTextFF(
                  controller: TextEditingController(),
                  hint: "Email",
                ),
                kvsb4,
                SHPasswordField(
                  controller: TextEditingController(),
                  hint: "Password",
                ),
                kvsb5,
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (val) {},
                    ),
                    SHText("Remember me"),
                    const Spacer(),
                    SHTextBtn(
                      label: "Forgot Password?",
                      onPressed: () {
                        Get.toNamed(Routes.FORGOT_PASSWORD);
                      },
                    ),
                  ],
                ),
                kvsb3,
                SizedBox(
                  width: double.infinity,
                  child: SHPrimaryBtn(
                    text: "Login",
                    onPressed: () {
                      Get.offAllNamed(Routes.HOME);
                    },
                  ),
                ),
                SHDivider(
                  text: "or log in with",
                  padding: EdgeInsets.symmetric(vertical: kvs5),
                ),
                Row(
                  children: [
                    Expanded(
                      child: SHPrimaryBtn(
                        text: "google",
                        color: HexColor("#dd4b39"),
                        isOutlined: true,
                        onPressed: () {},
                      ),
                    ),
                    khsMedium,
                    Expanded(
                      child: SHPrimaryBtn(
                        text: "facebook",
                        isOutlined: true,
                        color: HexColor("3c5a99"),
                        onPressed: () {},
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
