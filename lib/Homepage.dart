import 'package:flutter/material.dart';
import 'package:scratcher/widgets.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Scratcher(
          brushSize: 50,
          threshold: 50,
          color: Colors.red,
          image: Image.asset(
            "assets/images/outerimage.png",
            fit: BoxFit.fill,
          ),
          onChange: (value) => print("Scratch progress: $value%"),
          onThreshold: () => print("Threshold reached, you won!"),
          child: Container(
            height: 300,
            width: 300,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/newimage.png",
                  fit: BoxFit.contain,
                  width: 150,
                  height: 150,
                ),
                Column(
                  children: [
                    Text(
                      "Better luck",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      "next time!",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
