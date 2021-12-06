import 'package:flutter/material.dart';
import 'package:project/pagesdata.dart';



class Pics extends StatefulWidget {
  const Pics({ Key? key }) : super(key: key);

  @override
  _PicsState createState() => _PicsState();
}

class _PicsState extends State<Pics> {

  
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Red Shirt"),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,

          child: Column(
            children: [
              ListTile(
                onTap: (){},
                title: products("assets/shoes1.jpg", "10 Pieces left"),
                
                subtitle: Text("Important Shirt In green Color And thier Price is in your Range"),
              )
            ],
          ),
        ),
      ),
    );
  }
}