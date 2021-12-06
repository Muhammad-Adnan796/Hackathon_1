

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project/cfadata.dart';
import 'package:project/loginpage.dart';
import 'package:project/pics.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.redAccent),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Home Page",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>FavoriteData()));
              },
              icon: Icon(
                Icons.favorite,
                color: Colors.redAccent,
                size: 20,
              )),
          Stack(
            children: [ IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>CartData()));
                },
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.redAccent,
                  size: 20,
                )),
                Padding(
                  padding: const EdgeInsets.only(top: 5,left: 20),
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Text("0",style: TextStyle(fontSize: 13),),
                    ),
                  ),
                )
            ]
          )
        ],
      ),
      body: Center(
          child: Container(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: products("assets/shoes1.jpg", "10 Pieces left")),
                  products("assets/shoes2.jpg", "8 Pieces left"),
                  products("assets/shoes3.jpg", "12 Pieces left"),
                  products("assets/shoes4.jpg", "6 Pieces left"),
                  products("assets/shoes5.jpg", "5 Pieces left"),
                  products("assets/shoes6.jpg", "15 Pieces left"),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: GestureDetector(
                  onTap: (){},
                  child: Column(
                    children: [
                      products1(
                          "assets/t shirt 1.jpg", "Red Shirt", "\$50", "30%off"),
                      const SizedBox(
                        height: 20,
                      ),
                      products1(
                          "assets/t shirt 2.jpg", "Red Shirt", "\$90", "30%off"),
                      const SizedBox(
                        height: 20,
                      ),
                      products1(
                          "assets/t shirt 3.jpg", "Red Shirt", "\$80", "30%off"),
                      const SizedBox(
                        height: 20,
                      ),
                      products1(
                          "assets/t shirt 5.jpg", "Red Shirt", "\$70", "30%off"),
                      const SizedBox(
                        height: 20,
                      ),
                      products1(
                          "assets/t shirt 6.jpg", "Red Shirt", "\$110", "30%off"),
                      const SizedBox(
                        height: 20,
                      ),
                      products1(
                          "assets/t shirt 7.jpg", "Red Shirt", "\$150", "30%off"),
                      const SizedBox(
                        height: 20,
                      ),
                      products1(
                          "assets/t shirt 8.jpg", "Red Shirt", "\$120", "30%off"),
                          const SizedBox(
                        height: 20,
                      ),
                      products1(
                          "assets/t shirt 9.jpg", "Red Shirt", "\$200", "30%off"),
                          const SizedBox(
                        height: 20,
                      ),
                      products1(
                          "assets/t shirt 10.jpg", "Red Shirt", "\$250", "30%off"),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: Center(
                    child: Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/adn.jpg"),
                  radius: 40,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50, left: 10),
                    child: Container(
                      child: Column(
                        children: [
                          const Text(
                            "Muhammad Adnan",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "user@gmail.com",
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ))),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              leading: const Icon(Icons.logout),
              title: Text("Logout",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartData()));
              },
              leading: Icon(Icons.shopping_cart),
              title: Text("Cart",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FavoriteData()));
              },
              leading: Icon(Icons.favorite),
              title: Text("Favorite",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutData()));
              },
              leading: Icon(Icons.info),
              title: Text("About",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class Searchpage extends StatelessWidget {
  const Searchpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.redAccent),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.cancel_rounded,
          ),
        ),
        title: Container(
          height: 48,
          width: 1000,
          child: TextField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                hintText: "Search By name or address",
                hintStyle: TextStyle(
                  color: Colors.black26,
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Colors.black54))),
            cursorColor: Colors.black12,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
              ))
        ],
      ),
    );
  }
}

class Profilepage extends StatelessWidget {
  const Profilepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: AboutData(),
        ),
      ),
    );
  }
}

Widget products(var pics, var quantity) {
  return Container(
    child: Column(
      children: [
        Stack(
          children: [
            Container(
              width: 200,
              height: 100,
              child: Card(
                  shadowColor: Colors.grey,
                  elevation: 5,
                  child: ListTile(
                    leading: Image(image: AssetImage("$pics")),
                    title: Container(
                        height: 60,
                        child: Center(
                            child: Text(
                          "Shoes",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ))),
                    subtitle: Text(
                      "$quantity",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
          ],
        )
      ],
    ),
  );
}

Widget products1(var pics1, var Color, var price, var Discount) {
  return Container(
    child: Column(
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 5,
                  ),
                ],
              ),
              width: 300,
              height: 310,
              child: Column(
                children: [
                  Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_outline,
                          ),
                          iconSize: 25,
                        ),
                        Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                color: Colors.deepOrangeAccent,
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              "$Discount",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Image(
                      image: AssetImage(
                        "$pics1",
                      ),
                      height: 200,
                      width: 200,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "$Color",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 170),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 40,
                                child: Text("$price",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold)),
                              ),
                              IconButton(
                                  onPressed: () {
                                  
                                  },
                                  icon: Icon(Icons.shopping_cart_outlined),
                                  iconSize: 25),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    ),
  );
}

