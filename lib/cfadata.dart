import 'package:flutter/material.dart';

class CartData extends StatefulWidget {
  const CartData({Key? key}) : super(key: key);

  @override
  _CartDataState createState() => _CartDataState();
}

class _CartDataState extends State<CartData> {



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
            icon: Padding(
              padding: const EdgeInsets.only(right: 1000),
              child: Icon(
                Icons.arrow_back_ios,
              ),
            )),
        title: Text(
          "Cart Item",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8 ),
            child: Container(child: Icon(Icons.shopping_cart)),
          ),
        ],
      ),
      body: Center(
        child: Text("Cart Data"),
      ),
    );
  }
}






class FavoriteData extends StatefulWidget {
  const FavoriteData({Key? key}) : super(key: key);

  @override
  _FavoriteDataState createState() => _FavoriteDataState();
}

class _FavoriteDataState extends State<FavoriteData> {
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
            icon: Padding(
              padding: const EdgeInsets.only(right: 1000),
              child: Icon(
                Icons.arrow_back_ios,
              ),
            )),
        title: Text(
          "Favorite Item",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(child: Icon(Icons.favorite)),
          )],
      ),
      body: Center(
        child: Text("favorite"),
      ),
    );
  }
}






class AboutData extends StatefulWidget {
  const AboutData({Key? key}) : super(key: key);

  @override
  _AboutDataState createState() => _AboutDataState();
}




class _AboutDataState extends State<AboutData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        iconTheme: IconThemeData(color: Colors.redAccent),
        backgroundColor: Colors.white,
        title: Text("Profile Page",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold  ),),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
            )),
      ),
      body: Container(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                    ),
                  ],
                ),
                height: 200,
                width: double.infinity,
                child: Center(
                  child: ListTile(
                    title:CircleAvatar(radius: (60),
            backgroundColor: Colors.white,
            child: ClipRRect(
              borderRadius:BorderRadius.circular(50),
              child: Image.asset("assets/adn.jpg"),
            )
        ),
                    subtitle: Padding(
                        padding: const EdgeInsets.only(left: 70, top: 10),
                        child: Text(
                          "Muhammad Adnan",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )),
                  ),
                )),
          ),
          Container(
            child: ListTile(
              title:Text("Email",style:TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),),
              subtitle: Text("email1234@gmail.com"),
            ),
          ),
          Container(
            child: ListTile(
              title:Text("Phone Number",style:TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),),
              subtitle: Text("0312-0000012"),
            ),
          ),
          Container(
            child: ListTile(
              title:Text("Date Of Birth",style:TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),),
              subtitle: Text("28-12-2001"),
            ),
          ),
          Container(
            child: ListTile(
              title:Text("City",style:TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),),
              subtitle: Text("Karachi"),
            ),
          )
        ],
      )),
    );
  }
}
