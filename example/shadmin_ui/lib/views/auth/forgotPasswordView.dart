import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shadmin/shadmin.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

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
            padding: EdgeInsets.symmetric(horizontal: khs13, vertical: kvs14),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SHText.heading("Forgot your password?"),
                kvsb3,
                SHText.subHeading(
                    "Enter your email and we'll send you a reset link."),
                kvsb3,
                SHTextFF(
                  controller: TextEditingController(),
                  hint: "Email address",
                ),
                kvsb5,
                SizedBox(
                  width: double.infinity,
                  child: SHPrimaryBtn(
                    text: "Send reset link",
                    onPressed: () {},
                  ),
                ),
                kvsb5,
                SHText("I can't recover my account using this page."),
                kvsb3,
                SHTextBtn(
                  label: "Back to login",
                  onPressed: () {
                    Get.back();
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
