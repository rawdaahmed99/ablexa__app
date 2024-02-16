import 'package:ablexaapp/pages/profile_page.dart';
import 'package:flutter/material.dart';

class confirm_pass_change extends StatelessWidget {
  const confirm_pass_change({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("lib/images/verify.png"),
          SizedBox(
            height: 50,
          ),
          Text(
            "Password Changed",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "Your Password has been Changed Successfully",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ProfilePage();
                    }));
                  },
                  child: Text(
                    "Back",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 108, 99, 255),
                    minimumSize: Size(200, 50),
                  )))
        ]),
      ),
    );
  }
}
