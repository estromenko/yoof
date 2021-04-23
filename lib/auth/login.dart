import 'package:flutter/material.dart';
import 'auth.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        padding: EdgeInsets.only(
          top: 40,
          left: 20,
          right: 20,
        ),
        color: Color(0xff21252B),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Авторизация",
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                ),
              ),
            ),
            UserInput(label: "Email"),
            UserInput(label: "Пароль"),
            AuthButton(
              text: "Войти"
            ),
          ],
        ),
      ),
    );
  }
}
