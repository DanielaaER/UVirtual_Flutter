import 'package:UVirtual/MainScreens/homePage.dart';
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
            _registeruserTextField(),
            SizedBox(
              height: 15,
            ),
            _registerpasswordTextField(),
            SizedBox(
              height: 15,
            ),
            _passwordVerifyTextField(),
            SizedBox(
              height: 30,
            ),
            _registerbottomRegister(),
          ]),
        )),
      ),
    );
  }

  Widget _registeruserTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
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
    });
  }

  Widget _registerpasswordTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: TextField(
            decoration: InputDecoration(
                labelText: "Contraseña",
                hintText: "Contraseña",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none),
                fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
                suffixIcon: GestureDetector(
                  child: Icon(_showPassword == false
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onTap: () {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  },
                ),
                filled: true),
            obscureText: _showPassword == false ? true : false,
          ));
    });
  }

  Widget _passwordVerifyTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: TextField(
            decoration: InputDecoration(
                labelText: "Confirmar Contraseña",
                hintText: "Contraseña",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none),
                fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
                suffixIcon: GestureDetector(
                  child: Icon(_showPassword == false
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onTap: () {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  },
                ),
                filled: true),
            obscureText: _showPassword == false ? true : false,
          ));
    });
  }

  Widget _registerbottomRegister() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        child: Text(
          "Registrar",
          style: TextStyle(fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 120)),
      );
    });
  }
}
