import 'package:flutter/material.dart';

class SendCode extends StatelessWidget {
  const SendCode({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children:[
          Center(
            child: Container(
                padding: EdgeInsets.only(top: 160),
                child: Text(
                  "please check your email",
                  style: TextStyle(fontSize: 22
                  , fontWeight: FontWeight.bold,),
              
                ),
                
                ),

          ),
    ],  ),
    );
  }
}