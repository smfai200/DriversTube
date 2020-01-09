import 'package:drivertube/applocalization/appTranslations.dart';
import 'package:drivertube/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoNetworkPage extends StatefulWidget {
  NoNetworkPage({Key key}) : super(key: key);

  @override
  _NoNetworkPageState createState() => _NoNetworkPageState();
}

class _NoNetworkPageState extends State<NoNetworkPage> {
  
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        backgroundColor: Color(MyColors().appcolor),
       
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 85,top: 125,right: 85),
              child: Image(image: AssetImage("Assets/icons/NoNetwork.png"),),
            ),
            Container(
              margin: EdgeInsets.only(left: 17,bottom: 100,right: 17),
              child: Column(
                children: <Widget>[
                  Text(AppTranslations.of(context).text("Whoops"),style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 30)),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                     Text(AppTranslations.of(context).text("String4"),style: TextStyle(
              color: Colors.white70,
             
              fontSize: 15)),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Text(AppTranslations.of(context).text("String5"),style: TextStyle(
              color: Colors.white70,
             
              fontSize: 15)),
              )
                  ],
                ),
              ),
               Container(
              margin: EdgeInsets.only(left: 10,right: 10,top: 20),
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  margin: EdgeInsets.all(8.0),
               //   width: 341,
                  height: 56,
                  decoration: BoxDecoration(
                      color: Color(MyColors().Green),
                      border:
                          Border.all(color: Color(MyColors().Green), width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black,
                          blurRadius: 05.0,
                        )
                      ]),
                  child: Center(
                    child: Text(
                      AppTranslations.of(context).text("Try again"),
                      style: TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    // categoryvalue="Dangerous";
                  });
                },
              ),
            )
                ],
              )
            ),
           
          ],
        ),
      ),
    );
  }
}