import 'package:flutter/material.dart';
import 'package:grillmate/sign_in.dart';

class Sign_up extends StatefulWidget {
  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile_no = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController hobbies = TextEditingController();

  var gender;
  var male = "Male";
  var female = "Female";
  var other = "Other";

  bool eye = true;

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
                  width: 170,
                  height: 170,
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
              "Sign Up",
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
                controller: username,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Username",
                  labelStyle: TextStyle(color: Colors.green),
                  hintText: "Create Username",
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
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.green),
                  hintText: "Enter Email",
                  prefixIcon: Icon(
                    Icons.alternate_email,
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
                controller: mobile_no,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Mobile Number",
                  labelStyle: TextStyle(color: Colors.green),
                  hintText: "Enter Mobile Number",
                  prefixIcon: Icon(
                    Icons.phone,
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
                controller: dob,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  labelText: "Date of Bitrh",
                  labelStyle: TextStyle(color: Colors.green),
                  hintText: "Enter Date of Birth",
                  prefixIcon: Icon(
                    Icons.date_range,
                    color: Colors.green,
                  ),
                  suffixIcon: InkWell(
                    onTap: () async {
                      DateTime? date = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1970),
                        lastDate: DateTime.now(),
                      );
                      setState(() {
                        dob.text = date.toString();
                      });
                    },
                    child: Icon(
                      Icons.date_range_outlined,
                      color: Colors.green,
                    ),
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
                  hintText: "Create Password",
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
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              child: TextFormField(
                controller: hobbies,
                keyboardType: TextInputType.text,
                maxLines: null,
                decoration: InputDecoration(
                  labelText: "Hobbies",
                  labelStyle: TextStyle(color: Colors.green),
                  hintText: "Enter Hobbies",
                  prefixIcon: Icon(
                    Icons.favorite,
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
            Text(
              "Select Your Gender",
              style: TextStyle(
                  fontFamily: "Custom", color: Colors.green, fontSize: 15),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: RadioListTile(
                title: Text(
                  "Male",
                  style: TextStyle(
                      fontFamily: "Custom", color: Colors.green, fontSize: 15),
                ),
                value: male,
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: RadioListTile(
                title: Text(
                  "Female",
                  style: TextStyle(
                      fontFamily: "Custom", color: Colors.green, fontSize: 15),
                ),
                value: female,
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: RadioListTile(
                title: Text(
                  "Other",
                  style: TextStyle(
                      fontFamily: "Custom", color: Colors.green, fontSize: 15),
                ),
                value: other,
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sign_in(),
                  ),
                );
              },
              child: Container(
                width: 300,
                height: 40,
                child: Center(
                    child: Text(
                  "Submit",
                  style: TextStyle(
                      fontFamily: "Custom", fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                )),
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
                  "Already have an account ?",
                  style: TextStyle(
                    fontFamily: "Custom",
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sign_in(),
                        ));
                  },
                  child: Text(
                    "Sign In",
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
