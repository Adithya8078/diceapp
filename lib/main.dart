import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title:Center(
          child: Text('DICEAPP',

        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
        ),
        backgroundColor: Colors.black,
      ),
      body: MyApp(

      ),

    ),
  ));
}


class MyApp extends StatefulWidget {


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a=1;
  @override

  Widget build(BuildContext context) {

    return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.deepPurpleAccent),
                onPressed: () {
                  setState(() {
                    a=Random().nextInt(6)+1;
                    print(a);
                  });

                },

                child: Image.asset('Images/$a.jpg'),
                
              ),
            ),

      
          ],
        ));

  }
}

