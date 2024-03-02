import 'package:flutter/material.dart';

import 'package:ablexa/pages/confirmchange.dart';

class changepass extends StatelessWidget {
  const changepass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          "Change Password",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
            padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
            child: Column(children: [
              const Padding(
                padding: EdgeInsets.only(right: 180, bottom: 8),
                child: Text(
                  "New Password",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.grey,
                      size: 25,
                    ),
                    labelStyle: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w300),
                    labelText: "Enter New Password ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue))),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 110, bottom: 8),
                child: Text(
                  "Confirm New Password",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.grey,
                      size: 25,
                    ),
                    labelText: "Enter New Password ",
                    labelStyle: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w300),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue))),
              ),
              SizedBox(
                height: 100,
              ),
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return confirm_pass_change();
                        }));
                      },
                      child: Text(
                        "Update Password",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 108, 99, 255),
                        minimumSize: Size(250, 50),
                      )))
            ])),
      ]),
    );
  }
}
