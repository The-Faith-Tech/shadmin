import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadmin/shadmin.dart';

import '../../constants/constants.dart';

class LockScreenView extends StatelessWidget {
  const LockScreenView({super.key});

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
                Container(
                  width: ks21.w,
                  height: ks21.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      PROFILE_PIC_URL,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                kvsb7,
                SHText.heading("Hi! There"),
                SHText.subHeading("Enter your password to access the admin"),
                kvsb7,
                Row(
                  children: [
                    Expanded(
                      child: SHPasswordField(
                        controller: TextEditingController(),
                        hint: "Confirm Passsword",
                      ),
                    ),
                    khsb4,
                    SHPrimaryBtn(
                      text: "Login",
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
