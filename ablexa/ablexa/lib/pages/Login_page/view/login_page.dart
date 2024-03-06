import 'package:ablexa/Api/login.dart';
import 'package:ablexa/pages/forget_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    TextEditingController EmailController = new TextEditingController();
    TextEditingController PasswordController = new TextEditingController();
    final _FormKey = GlobalKey<FormState>();

    login_user log = login_user();
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: _FormKey,
              child: Container(
                padding: EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: 150),
                        child: Text(
                          "Welcome back!",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        )),
                    Text(
                      "log in to access your account",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 50, right: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 400, bottom: 8),
                            child: Text(
                              "Email",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextFormField(
                            validator: (EmailController) {
                              if (EmailController!.isEmpty) {
                                return "Please Enter your Email";
                              }
                            },
                            keyboardType: TextInputType.emailAddress,
                            controller: EmailController,
                            decoration: InputDecoration(
                                hintText: "Enter Your Email ",
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(
                                            255, 108, 99, 255)))),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 360, bottom: 8),
                                  child: Text(
                                    "Password",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                TextFormField(
                                  validator: (PasswordController) {
                                    if (PasswordController!.isEmpty) {
                                      return "Please Enter your Password";
                                    }
                                  },
                                  controller: PasswordController,
                                  style: TextStyle(color: Colors.grey),
                                  decoration: InputDecoration(
                                    hintText: "Enter Your Password",
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          obscureText = !obscureText;
                                        });
                                      },
                                      child: Icon(obscureText
                                          ? Icons.visibility_off
                                          : Icons.visibility),
                                    ),
                                    border: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 108, 99, 255)),
                                    ),
                                  ),
                                  obscureText: obscureText,
                                ),
                                Row(
                                  children: [
                                    OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        side: BorderSide.none,
                                      ),
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
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
                                      backgroundColor:
                                          Color.fromARGB(255, 108, 99, 255),
                                      minimumSize: Size(170, 50),
                                    ),
                                    onPressed: () {
                                      if (_FormKey.currentState!.validate()) {
                                        log.login(
                                            EmailController.text.toString(),
                                            PasswordController.text.toString());
                                      }

                                      // Navigator.push(context,
                                      //     MaterialPageRoute(builder: (context) {
                                      //   return ProfilePage();
                                      // }));
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
            ),
          ),
        ));
  }
}
