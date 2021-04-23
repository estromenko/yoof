import 'package:flutter/material.dart';
import 'auth.dart';

class Registration extends StatelessWidget {
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
                "Регистрация",
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                ),
              ),
            ),
            UserInput(label: "Email"),
            UserInput(label: "Пароль"),
            UserInput(label: "Подтвердите пароль"),
            AuthButton(text: "Зарегистрироваться", width: 300),
          ],
        ),
      ),
    );
  }
}
