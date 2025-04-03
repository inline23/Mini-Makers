// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:mini_makers/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController loginInput = TextEditingController();
    String defPass = '0000';
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade900,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    "MINI",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 42,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "MAKERS",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 42,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    cursorColor: Colors.white,
                    controller: loginInput,
                    keyboardType: TextInputType.numberWithOptions(),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Login Key",
                      hintStyle: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    print('Login Pressed');
                    if (loginInput.text == defPass) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue.shade200,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 13,
                        vertical: 18,
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
