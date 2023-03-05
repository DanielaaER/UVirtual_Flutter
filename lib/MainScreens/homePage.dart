import 'package:UVirtual/MainScreens/registerPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              height: 120,
            ),
            _userTextField(),
            SizedBox(
              height: 15,
            ),
            _passwordTextField(),
            SizedBox(
              height: 30,
            ),
            _bottomLogin(),
            SizedBox(
              height: 15,
            ),
            _bottomRegister(),
          ]),
        )),
      ),
    );
  }

  Widget _userTextField() {
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

  Widget _passwordTextField() {
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

  Widget _bottomLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return ElevatedButton(
        onPressed: () {},
        child: Text(
          "Iniciar Sesion",
          style: TextStyle(fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 100)),
      );
    });
  }

  _bottomRegister() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
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
    });
  }
}
