import 'package:UVirtual/MainScreens/homePage.dart';
import 'package:flutter/material.dart';

import '../../../MainScreens/registerPage.dart';

class registerUserFiedl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: TextField(
        decoration: InputDecoration(
            labelText: "Matricula",
            hintText: "ZS00000000",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true),
      ),
    );
  }
}
