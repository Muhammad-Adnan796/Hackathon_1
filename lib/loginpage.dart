import 'package:flutter/material.dart';
import 'package:project/navbar.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Login",
          style:
              TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(right: 5, left: 5),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, right: 0.8, bottom: 5, left: 0.8),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Image(image: AssetImage("assets/adn1.gif"))),
              ),
              
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 50, left: 50),
                            child: TextField(
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  labelText: "User Name",
                                  labelStyle: TextStyle(color: Colors.black),
                                  focusColor: Colors.black,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 50, left: 50),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              obscuringCharacter: "*",
                              decoration: InputDecoration(
                                  labelText: "Password",
                                  labelStyle: TextStyle(color: Colors.black),
                                  focusColor: Colors.black,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: Column(
                              children: [
                                ElevatedButton.icon(
                                  onPressed: () {
                                    
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => NavBAr()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40))),
                                  icon: Icon(
                                    Icons.login_outlined,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                  label: Text("Login",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    "Not have an account?Register.",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
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
        ),
      ),
    );
  }
}
