import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home_screen extends StatefulWidget {
  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
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
              onTap: () {},
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
              onTap: () {},
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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/banner1.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/banner2.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/banner3.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/banner4.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 220,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 300),
                viewportFraction: 0.9,
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Icon(Icons.share),
        elevation: 10,
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        color: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            InkWell(
              onTap: () {

              },
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    Text("Home",style: TextStyle(fontSize: 15,color: Colors.white),)
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
              },
              child: Padding(
                padding: EdgeInsets.only(top: 5,bottom: 5,left: 5,right: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.restaurant_menu,
                      color: Colors.white,
                    ),
                    Text("Menu",style: TextStyle(fontSize: 15,color: Colors.white),)
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {

              },
              child: Padding(
                padding: EdgeInsets.only(top: 5,bottom: 5,left: 20,right: 5),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    Text("Cart",style: TextStyle(fontSize: 15,color: Colors.white),)
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {

              },
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                    ),
                    Text("Profile",style: TextStyle(fontSize: 15,color: Colors.white),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
