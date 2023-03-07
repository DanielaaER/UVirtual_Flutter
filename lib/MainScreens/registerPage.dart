import 'package:UVirtual/components/buttons/RegisterButtonPage.dart';
import 'package:UVirtual/MainScreens/homePage.dart';
import 'package:UVirtual/components/fields/register/registerPasswordField.dart';
import 'package:UVirtual/components/fields/register/registerUserField.dart';
import 'package:UVirtual/components/fields/register/registerVerifyField.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter/rendering.dart';

class registerPage extends StatefulWidget {
  const registerPage({super.key});

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.all(30),
          child: Column(children: [
            Image.asset(
              "assets/images/ic_uv.png",
              height: 180,
            ),
            SizedBox(
              height: 100,
            ),
            registerUserFiedl(),
            SizedBox(
              height: 15,
            ),
            registerPasswordField(),
            SizedBox(
              height: 15,
            ),
            registerVerifyField(),
            SizedBox(
              height: 30,
            ),
            RegisterButtonPage(),
          ]),
        )),
      ),
    );
  }
}
