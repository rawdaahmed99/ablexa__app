import 'package:ablexa/pages/forget01_page.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
      
      child:Column(
          children: [
          Center(
            heightFactor: 2,
            child: Image(
                image:
                    AssetImage("assets/images/illustration.png")),
          ),
      Padding(
        padding: const EdgeInsets.only(right: 175,),
        child: Text("Forget password?",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)
),),
      Padding(
        padding: const EdgeInsets.only(left:15.0),
        child: Text("Don’t worry! It happens. Please enter the     email associated with your account.",style: TextStyle(fontSize: 18),),
      )  ,
        Padding(
                  padding:
                      const EdgeInsets.only(top: 30, right: 300.0, bottom: 8),
                  child: Text(
                    "Email",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
          Padding(
            padding: const EdgeInsets.only(right: 20,left: 20,),
            child: TextField(
                    decoration: InputDecoration(
                        labelText: "enter your email",
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue))),
                  ),
          ),
            Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Color.fromARGB(255, 108, 99, 255), // لون الخلفية
                      // لون النص عند التفاعل
                      minimumSize: Size(190, 50),
                    ),
                    onPressed: () {Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SendCode();
                      }));},
                    
                    child: Text(
                      "Send code",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                )
        
      
      ],),),
    );
  }
}