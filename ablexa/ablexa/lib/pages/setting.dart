import 'package:ablexa/pages/landing_page.dart';
import 'package:ablexa/pages/profile_page/view/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyFlutterApp {
  MyFlutterApp._();

  static const _kFontFam = 'MyFlutterApp';
  static const String? _kFontPkg = null;

  static const IconData key =
      IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ProfilePage();
            }));
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  "Settings",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "My Profile",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ListTile(
                  leading: Icon(
                    MyFlutterApp.key,
                    color: Colors.grey,
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Reset Password",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.help_outline,
                    color: Colors.grey,
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Help",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.email_outlined,
                    color: Colors.grey,
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Contact Us",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.privacy_tip_outlined,
                    color: Colors.grey,
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Privacy Policy",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      )),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.info_outline,
                  color: Colors.grey,
                ),
                title: Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "About us",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LandingPage();
                      }));
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.logout_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Log out",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 108, 99, 255),
                      minimumSize: Size(150, 50),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
