import 'package:drivertube/src/ui/HomePage.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'BottomAppBar.dart';

class SpleshScreen extends StatefulWidget {
  SpleshScreen({Key key}) : super(key: key);

  @override
  _SpleshScreenState createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  void initState() {
    
    super.initState();

    Future.delayed(Duration(seconds: 3),(){
      Navigator.of(context).pushNamed('/bottomapbar');

    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            decoration: BoxDecoration(
             
              image: DecorationImage(image: AssetImage('Assets/images/spleshimage.jpg'),fit: BoxFit.cover,)
            ),
            child: Center(
              child: Column(
              children: <Widget>[
                 Container(
               margin: EdgeInsets.only(top: 137,left: 19,right: 19),
        
            
                height: 54,
              //  width: 330,
                child: Image(image:AssetImage("Assets/images/logo.png")),
              ),
              ],
            ),
          ),
            )
    );
  }
}