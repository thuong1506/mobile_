import 'package:flutter/material.dart';
import 'package:electronic/constants/asset_images.dart';
import 'package:electronic/constants/routes.dart';
import 'package:electronic/screens/auth_ui/login/login.dart';
import 'package:electronic/widgets/primary_button/primary_button.dart';
import 'package:electronic/widgets/top_titles/top_titles.dart';

import '../sign_up/sign_up.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopTitles(
                subtitle: "Mua bất kỳ linh kiện điện từ nào từ ứng dụng ",
                title: "Chào mừng"),
            Center(
              child: Image.asset(
                AssetsImages.instance.welcomeImage,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            PrimaryButton(
              title: "Đăng nhập",
              onPressed: () {
                Routes.instance.push(widget: const Login(), context: context);
              },
            ),
            const SizedBox(
              height: 18.0,
            ),
            PrimaryButton(
              title: "Đăng ký",
              onPressed: () {
                Routes.instance.push(widget: const SignUp(), context: context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
