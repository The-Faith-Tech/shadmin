import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadmin/shadmin.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

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
                MyText(
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
                MyText.heading("Reset new password?"),
                kvsb9,
                SHPasswordField(
                  controller: TextEditingController(),
                  hint: "New Passsword",
                ),
                kvsb3,
                SHPasswordField(
                  controller: TextEditingController(),
                  hint: "Confirm Passsword",
                ),
                kvsb5,
                SizedBox(
                  width: double.infinity,
                  child: PrimaryButton(
                    text: "Set password",
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
