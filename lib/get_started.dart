import 'package:flutter/material.dart';
import 'package:grillmate/home_screen.dart';
import 'package:grillmate/sign_in.dart';

class Get_started extends StatefulWidget {
  @override
  State<Get_started> createState() => _Get_startedState();
}

class _Get_startedState extends State<Get_started> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/get_started.png"),
                  fit: BoxFit.fill),
            ),
          ),
          Positioned(
            left: 40,
            bottom: 60,
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Sign_in(),));
              },
              child: Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:
                  Center(child: Text("Get Started",style: TextStyle(fontFamily: "Custom",color: Colors.white,fontSize: 20),))
              ),
            ),
          ),
        ],
      ),
    );
  }
}
