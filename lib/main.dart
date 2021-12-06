import 'package:flutter/material.dart';
import 'package:project/navbar.dart';
import 'package:project/pagesdata.dart';
import 'package:project/loginpage.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}





class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
   super.initState();

    Future.delayed(
      Duration(seconds: 3),(){
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context)=>LoginPage()));});

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 3,right: 3),
                child: Container(
                  height: 600,
                  width: MediaQuery.of(context).size.width*10,
                  child: const Image(image: AssetImage("assets/adn1.gif"),)),
              ),
              
              const Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Text("For Shoping",style: TextStyle(color: Colors.black26,fontWeight: FontWeight.bold ),),
              )
            ],
          ),
        ),
      ),
      
    );
  }
}