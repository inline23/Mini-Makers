import 'package:flutter/material.dart';
import 'package:mini_makers/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController loginInput = TextEditingController();
    String defPass = '0000';
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 223, 223),
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
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "MAKERS",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 42,
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
                    controller: loginInput,
                    keyboardType: TextInputType.numberWithOptions(),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Login Key",
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
                      color: Colors.orange,
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
