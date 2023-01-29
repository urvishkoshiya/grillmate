import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:grillmate/pizza.dart';
import 'package:grillmate/sandwich.dart';
import 'package:grillmate/waffles.dart';
import 'Dosa.dart';
import 'burger.dart';
import 'coffee.dart';
import 'cold_drinks.dart';
import 'description.dart';
import 'french_fries.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map> data = [
    {
      "name": "Pizza",
      "image":
          "https://thumbs.dreamstime.com/b/pizza-rustic-italian-mozzarella-cheese-basil-leaves-35669930.jpg",
      "des":
          "pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperature—and served hot.",
      "price": "Rs. 399 /-",
      "iname":"Tomato Twist Pizza"
    },
    {
      "name": "Burger",
      "image":
          "https://img.freepik.com/premium-photo/homemade-burger-with-beef-cheese-onion-marmalade-wooden-board-fast-food-concept-american-food_90258-3917.jpg?w=2000",
      "des":
          "A burger is a flat round mass of minced meat or vegetables, which is fried and often eaten in a bread roll.",
      "price": "Rs. 199 /-",
      "iname":"Cheesy Vegie Burger"
    },
    {
      "name": "French Fries",
      "image":
          "https://static.toiimg.com/thumb/54659021.cms?imgsize=275086&width=800&height=800",
      "des":
          "french fries, also called chips, finger chips, fries, or French pommes frites, side dish or snack typically made from deep-fried potatoes that have been cut into various shapes, especially thin strips.",
      "price": "Rs. 149 /-",
      "iname":"Maxican Fries"
    },
    {
      "name": "Waffles",
      "image":
          "https://preppykitchen.com/wp-content/uploads/2019/08/waffles-feature-2.jpg",
      "des":
          "A waffle is a dish made from leavened batter or dough that is cooked between two plates that are patterned to give a characteristic size, shape, and surface impression. There are many variations based on the type of waffle iron and recipe used.",
      "price": "Rs. 299 /-",
      "iname":"Strawberry Waffles"
    },
    {
      "name": "SandWich",
      "image":
          "https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/twdohpmtfzsz6rzuq1bp",
      "des":
          "sandwich, in its basic form, slices of meat, cheese, or other food placed between two slices of bread. Although this mode of consumption must be as old as meat and bread, the name was adopted only in the 18th century for John Montagu, 4th earl of Sandwich.",
      "price": "Rs. 239 /-",
      "iname" : "Mayo Cheesy Sandwich"
    },
    {
      "name": "Dosa",
      "image":
          "https://images.pexels.com/photos/5560763/pexels-photo-5560763.jpeg?cs=srgb&dl=pexels-saveurs-secretes-5560763.jpg&fm=jpg",
      "des":
          "A dosa, also called dosai, dosey, or dosha, is a thin pancake in South Indian cuisine made from a fermented batter of ground black lentils and rice. Dosas are popular in South Asia as well as around the world. Dosas are served hot, often with chutney and sambar.",
      "price": "Rs. 189 /-",
      "iname":"Tadka Masala Dosa"
    },
    {
      "name": "Coffee",
      "image":
          "https://www.netmeds.com/images/cms/wysiwyg/blog/Post/2018/10/coffee_its_benefits_898_1_.jpg",
      "des":
          "Coffee is a beverage brewed from the roasted and ground seeds of the tropical evergreen coffee plant. Coffee is one of the three most popular beverages in the world (alongside water and tea), and it is one of the most profitable international commodities.",
      "price": "Rs. 279 /-",
      "iname":"Brown Coffee"
    },
    {
      "name": "Cold Drinks",
      "image":
          "https://w0.peakpx.com/wallpaper/475/205/HD-wallpaper-coca-cola-golden.jpg",
      "des":
          "soft drink, any of a class of nonalcoholic beverages, usually but not necessarily carbonated, normally containing a natural or artificial sweetening agent, edible acids, natural or artificial flavours, and sometimes juice.",
      "price": "Rs. 45 /-",
      "iname":"Coco-Cola"
    },
  ];

  // List<Widget> page = [
  //   Pizza(),
  //   Burger(),
  //   French_fries(),
  //   Waffles(),
  //   Sandwich(),
  //   Dosa(),
  //   Coffee(),
  //   Cold_drinks(),
  //
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 5,
            ),
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
                viewportFraction: 1,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Explore Menu",
                  style: TextStyle(fontFamily: "Custom", fontSize: 25),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: data.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Description(data[index]),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(data[index]["image"]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            data[index]["name"],
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Custom",
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
