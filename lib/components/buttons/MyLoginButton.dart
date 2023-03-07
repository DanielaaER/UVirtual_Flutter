import 'package:flutter/material.dart';

import '../../MainScreens/verifyFace.dart';

class MyLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => verifyFace()));
      },
      child: Text(
        "Iniciar Sesion",
        style: TextStyle(fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 100)),
    );
  }
}
