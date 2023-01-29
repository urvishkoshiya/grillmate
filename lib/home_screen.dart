import 'package:flutter/material.dart';
import 'package:grillmate/Menu.dart';
import 'package:grillmate/cart.dart';
import 'package:grillmate/home.dart';
import 'package:grillmate/profile.dart';
import 'package:grillmate/sign_in.dart';

class Home_screen extends StatefulWidget {
  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  List<Widget> page = [
    Home(),
    Menu(),
    Cart(),
    Profile(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Grillmate",
          style: TextStyle(fontFamily: "Custom"),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Urvish Koshiya",
                style: TextStyle(fontFamily: "Custom"),
              ),
              accountEmail: Text(
                "urvishkoshiya11@gmail.com",
                style: TextStyle(fontFamily: "Custom"),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/circle_avatar.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.black),
                title: Text(
                  "Home",
                  style: TextStyle(fontFamily: "Custom"),
                ),
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.black,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.account_circle, color: Colors.black),
                title: Text(
                  "My Profile",
                  style: TextStyle(fontFamily: "Custom"),
                ),
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.black,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.restaurant_menu, color: Colors.black),
                title: Text(
                  "Menu",
                  style: TextStyle(fontFamily: "Custom"),
                ),
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.black,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.history, color: Colors.black),
                title: Text(
                  "Order History",
                  style: TextStyle(fontFamily: "Custom"),
                ),
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.black,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.shopping_cart, color: Colors.black),
                title: Text(
                  "My Cart",
                  style: TextStyle(fontFamily: "Custom"),
                ),
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.black,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.headset_mic_outlined, color: Colors.black),
                title: Text(
                  "Contact Us",
                  style: TextStyle(fontFamily: "Custom"),
                ),
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.black,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Sign_in(),),);
              },
              child: ListTile(
                leading: Icon(Icons.power_settings_new, color: Colors.black),
                title: Text(
                  "Sign Out",
                  style: TextStyle(fontFamily: "Custom"),
                ),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Center(
              child: Text(
                "Powered By Grillmate",
                style: TextStyle(fontFamily: "Custom", fontSize: 17),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Center(
              child: Text(
                "v20.4.3",
                style: TextStyle(fontFamily: "Custom"),
              ),
            ),
          ],
        ),
      ),
      body:page[index],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25,
        selectedIconTheme: IconThemeData(size: 30),
        showUnselectedLabels: true,
        backgroundColor: Colors.green,
        currentIndex:index,
        onTap: (value) {
          setState(() {
            index=value;
          });
        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.green),
        BottomNavigationBarItem(icon: Icon(Icons.restaurant_menu),label: "Menu",backgroundColor: Colors.green),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart",backgroundColor: Colors.green),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label: "Profile",backgroundColor: Colors.green),
      ],),
    );
  }
  
}
