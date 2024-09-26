import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shadmin/shadmin.dart';

import '../../routes/appPages.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
                    SHText.heading("Register"),
                    const Spacer(),
                    SHText("Have an account?"),
                    SHTextBtn(
                      label: "Login",
                      onPressed: () {
                        Get.offAllNamed(Routes.LOGIN);
                      },
                    ),
                  ],
                ),
                kvsb3,
                SHTextFF(
                  controller: TextEditingController(),
                  hint: "Name",
                ),
                kvsb4,
                SHTextFF(
                  controller: TextEditingController(),
                  hint: "Email address",
                ),
                kvsb4,
                SHTextFF(
                  controller: TextEditingController(),
                  hint: "Phone number",
                ),
                kvsb4,
                Row(
                  children: [
                    Expanded(
                      child: SHPasswordField(
                        controller: TextEditingController(),
                        hint: "Password",
                      ),
                    ),
                    khsb4,
                    Expanded(
                      child: SHPasswordField(
                        controller: TextEditingController(),
                        hint: "Confirm Password",
                      ),
                    ),
                  ],
                ),
                kvsb5,
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (val) {},
                    ),
                    SHText("I accept the terms and privacy policy"),
                  ],
                ),
                kvsb3,
                SizedBox(
                  width: double.infinity,
                  child: SHPrimaryBtn(
                    text: "Register",
                    onPressed: () {
                      Get.offAllNamed(Routes.HOME);
                    },
                  ),
                ),
                SHDivider(
                  text: "or register with",
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
