import 'package:ablexa/pages/forget_page.dart';
import 'package:ablexa/pages/profile_page/view/profile_page.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 150),
                    child: Text(
                      "Welcome back!",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
                Text(
                  "sign in to access your account",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, top: 50, right: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 310, bottom: 8),
                        child: Text(
                          "Email",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: "Enter Your Email or Phone Number",
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue))),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 260, bottom: 8),
                              child: Text(
                                "Password",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            TextField(
                              style: TextStyle(color: Colors.grey),
                              decoration: InputDecoration(
                                labelText: "Enter Your Password",
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _obscureText =! _obscureText;
                                    });
                                  },
                                  child: Icon(_obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                ),
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                              ),
                              obscureText: _obscureText,
                            ),
                            Row(
                              children: [
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide.none,
                                  ),
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return ForgetPassword();
                                    }));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 180, bottom: 50),
                                    child: Text('Forget Password?',
                                        style: TextStyle(fontSize: 17)),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 50,
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color.fromARGB(
                                      255, 108, 99, 255), // لون الخلفية
                                  // لون النص عند التفاعل
                                  minimumSize: Size(170, 50),
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return ProfilePage();
                                  }));
                                },
                                child: Text(
                                  "Log in",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
