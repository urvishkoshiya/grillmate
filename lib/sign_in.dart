import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:grillmate/sign_up.dart';

import 'home_screen.dart';

class Sign_in extends StatefulWidget {
  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  bool eye = true;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  FirebaseDatabase database = FirebaseDatabase.instance;
  String selectedKey="";

  List<Map> data=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(200),
                      bottomRight: Radius.circular(200),
                    ),
                  ),
                ),
                Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/grillmate1.png"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Sign In",
              style: TextStyle(
                  fontFamily: "Custom",
                  fontSize: 30,
                  color: Colors.green,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              child: TextFormField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.green),
                  hintText: "Enter Email",
                  prefixIcon: Icon(
                    Icons.account_circle,
                    color: Colors.green,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              child: TextFormField(
                controller: password,
                keyboardType: TextInputType.visiblePassword,
                obscureText: eye,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.green),
                  hintText: "Enter Password",
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.green,
                  ),
                  suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          eye = !eye;
                        });
                      },
                      child: eye
                          ? Icon(
                              Icons.visibility,
                              color: Colors.green,
                            )
                          : Icon(
                              Icons.visibility_off,
                              color: Colors.green,
                            )),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(
            //     left: 200,
            //   ),
            //   child: TextButton(
            //     onPressed: () {
            //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Unable to Forget Password.")),);
            //     },
            //     child: Text(
            //       "Forgot Password ?",
            //       style: TextStyle(fontFamily: "Custom"),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                if (email.text.isEmpty && password.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Please Fill The Required Fields."),
                      duration: Duration(seconds: 2),
                    ),
                  );
                } else if (email.text.isEmpty && password.text.isNotEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Enter the Username."),
                      duration: Duration(seconds: 2),
                    ),
                  );
                } else if (email.text.isNotEmpty && password.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Enter the Password"),
                      duration: Duration(seconds: 2),
                    ),
                  );
                } else {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home_screen(email.text),
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Sign In Successfully."),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        }
                },
              child: Container(
                width: 300,
                height: 40,
                child: Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontFamily: "Custom",
                        fontSize: 20,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ?",
                  style: TextStyle(
                    fontFamily: "Custom",
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sign_up(),
                        ));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontFamily: "Custom"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
