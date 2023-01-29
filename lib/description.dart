import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  Map data = {};

  Description(this.data);

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  bool like = false;
  int q = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: double.infinity,
                    height: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30)),
                      image: DecorationImage(
                          image: NetworkImage(widget.data['image']),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back, size: 25),
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    left: 50,
                    top: 8,
                    child: Text(
                      widget.data['name'],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: "Custom"),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          like = !like;
                        });
                      },
                      icon: like
                          ? Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 27,
                            )
                          : Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                              size: 27,
                            ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              if(q>0){
                                q-=1;
                              }
                            });
                          },
                          icon: Icon(
                            Icons.minimize,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      Container(
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            q.toString(),
                            style: TextStyle(
                                fontFamily: "Custom",
                                fontSize: 18,
                                color: Colors.green),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            q+=1;
                          });
                        },
                        icon: Icon(
                          Icons.add,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                widget.data['iname'],
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: "Custom",
                ),
              ),

              Text(
                widget.data['price'],
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Custom",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 350,
                  height: 2,
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10,left: 10,right: 10),
                child: Text(
                  widget.data['des'],
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Custom",
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              InkWell(
                onTap: () {
                  if(q==0){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Please Add the Quantity."), ),);
                  }
                  else
                    {
                      showDialog(context: context, builder:(context) => SimpleDialog(
                        children: [
                          Container(
                            width: 350,
                            height: 300,
                            child: Column(
                              children: [
                                Center(
                                  child: Container(
                                    height:200,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/done.png"))
                                    ),
                                  ),
                                ),
                                Center(child: Text("Order Placed Successfully",style: TextStyle(fontFamily: "Custom",fontSize: 22),textAlign: TextAlign.center,),),
                                SizedBox(height: 20,),
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                      width: 150,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child:
                                      Center(child: Text("Ok",style: TextStyle(fontFamily: "Custom",color: Colors.white,fontSize: 20),))
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),);
                    }
                },
                child: Container(
                    width: 200,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      "Order",
                      style: TextStyle(
                          fontFamily: "Custom",
                          color: Colors.white,
                          fontSize: 20),
                    ),),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
