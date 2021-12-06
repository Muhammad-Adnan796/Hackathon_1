import 'package:flutter/material.dart';
import 'package:project/pagesdata.dart';




class NavBAr extends StatefulWidget {
  const NavBAr({ Key? key }) : super(key: key);

  @override
  _NavBArState createState() => _NavBArState();
}

class _NavBArState extends State<NavBAr> {
var pagesdata = [ Homepage(), Searchpage(), Profilepage() ];
int selecteditem = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pagesdata[selecteditem],
      ),
      bottomNavigationBar: BottomNavigationBar(items:[  
        BottomNavigationBarItem(icon: Icon(Icons.home,size:20),label: "Home",),
         BottomNavigationBarItem(icon: Icon(Icons.search, size:20),label: "Search",),
          BottomNavigationBarItem(icon: Icon(Icons.person, size:20),label: "Profile",),
        
      ],
      currentIndex: selecteditem,
      selectedItemColor: Colors.redAccent,
      onTap: (value){
        setState(() {
          selecteditem=value;
        });


      },
      
      ),
    );
  }
}