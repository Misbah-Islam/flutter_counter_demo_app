import 'package:flutter/material.dart';

class Mango extends StatelessWidget {
  const Mango({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            height: 410,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(420),
                bottomLeft: Radius.circular(150),
                topRight: Radius.circular(280),
                bottomRight: Radius.circular(550),
              ),
              gradient: LinearGradient(
                colors: [Colors.deepOrange, Colors.yellow],
              ),
            ),

            alignment: Alignment.topRight,
            child: Container(
              height: 25,
              width: 50,

              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),

          ),
        ),
      ),
    );
  }
}
