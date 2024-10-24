import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shadmin.dart';

class SHLoginBox extends StatelessWidget {
  const SHLoginBox({
    super.key,
    required this.onCreateAccount,
    required this.emailController,
    required this.passwordController,
    required this.onForgotPassword,
    required this.onLogin,
    this.onGoogleLogin,
    this.onFacebookLogin,
    required this.onRememberMe,
    required this.remember,
    required this.logoUrl,
    required this.title,
    this.isEmailEnabled = true, required this.formKey,
  });
  final VoidCallback onCreateAccount;
  final VoidCallback onForgotPassword;
  final VoidCallback onLogin;
  final VoidCallback? onGoogleLogin;
  final VoidCallback? onFacebookLogin;
  final bool remember;
  final void Function(bool?)? onRememberMe;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final String logoUrl;
  final String title;
  final bool isEmailEnabled;
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CachedNetworkImage(
                imageUrl: logoUrl,
                width: ks11.w,
              ),
              khsSmall,
              SHText(
                title,
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
          child: Form(
            key: formKey,
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
                      onPressed: onCreateAccount,
                    ),
                  ],
                ),
                kvsb3,
                SHTextFF(
                  controller: emailController,
                  hint: "Email",
                  enabled: isEmailEnabled,
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Email is required";
                    }
                    return null;
                  },
                ),
                kvsb4,
                SHPasswordField(
                  controller: passwordController,
                  hint: "Password",
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Password is required";
                    }
                    return null;
                  },
                ),
                kvsb5,
                Row(
                  children: [
                    Checkbox(
                      value: remember,
                      onChanged: onRememberMe,
                    ),
                    SHText("Remember me"),
                    const Spacer(),
                    SHTextBtn(
                      label: "Forgot Password?",
                      onPressed: onForgotPassword,
                    ),
                  ],
                ),
                kvsb3,
                SizedBox(
                  width: double.infinity,
                  child: SHPrimaryBtn(
                    text: "Login",
                    onPressed: onLogin,
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
                        onPressed: onGoogleLogin ?? () {},
                      ),
                    ),
                    khsMedium,
                    Expanded(
                      child: SHPrimaryBtn(
                        text: "facebook",
                        isOutlined: true,
                        color: HexColor("3c5a99"),
                        onPressed: onFacebookLogin ?? () {},
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
