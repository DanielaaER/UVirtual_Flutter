import 'package:flutter/material.dart';

import '../../MainScreens/registerPage.dart';
import '../../MainScreens/verifyFace.dart';

class MyRegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => registerPage()));
      },
      child: Text(
        "Registrar",
        style: TextStyle(fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.lightBlue,
        side: BorderSide(color: Colors.lightBlue, width: 3),
        shape: StadiumBorder(),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 120),
      ),
    );
  }
}
