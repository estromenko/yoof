import 'package:flutter/material.dart';
import 'login.dart';
import 'reg.dart';

class AuthActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        padding: EdgeInsets.only(
          top: 40,
        ),
        color: Color(0xff21252B),
        child: Center(
          child: Column(
            children: [
              Text(
                "YOOF",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                "assets/images/Ktoo.png",
                width: 315,
                height: 377,
              ),
              AuthButton(
                text: "Авторизация",
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login())),
                },
              ),
              AuthButton(
                text: "Регистрация",
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Registration())),
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AuthButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final double width;
  AuthButton({this.text, this.onPressed, this.width = 200});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: SizedBox(
        width: this.width,
        child: TextButton(
          child: Text(
            this.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 21,
            ),
          ),
          onPressed: this.onPressed,
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.all(10)),
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class UserInput extends StatelessWidget {
  final String label;

  UserInput({this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              child: Text(
                this.label,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              fillColor: Colors.white,
              focusColor: Colors.white,
              filled: true,
            ),
          ),
        ],
      ),
    );
  }
}
