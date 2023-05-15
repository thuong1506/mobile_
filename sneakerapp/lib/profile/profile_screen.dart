// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sneakerapp/utils/constants.dart';
import 'package:sneakerapp/view/profile/widget/appbar.dart';
import 'package:sneakerapp/view/profile/widget/body.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConstantsColor.backgroundColor,
        appBar: customAppBarProfile(),
        body: BodyProfile(),
      ),
    );
  }
}
