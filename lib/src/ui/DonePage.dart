import 'package:drivertube/applocalization/appTranslations.dart';
import 'package:drivertube/colors/colors.dart';
import 'package:flutter/material.dart';

class DonePage extends StatelessWidget {
  const DonePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(MyColors().appcolor),
       appBar: AppBar(
        backgroundColor: Color(MyColors().appcolor),
        centerTitle: true,
        // automaticallyImplyLeading: false,
        title: Text(
          AppTranslations.of(context).text("SignUp"),
          style: TextStyle(
              color: Color(MyColors().Green),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Container(
           
            child: Column(
              children: <Widget>[
                Container(
              
            margin: EdgeInsets.only(top:20,left: 131,right: 131),
          
            child: Image(image: AssetImage("Assets/icons/DoneIcon.png")),), 
          Container(
            margin: EdgeInsets.only(top: 30),
           child:Text(
          AppTranslations.of(context).text("Done"),
          style: TextStyle(
              color: Color(MyColors().Green),
              fontWeight: FontWeight.w600,
              fontSize: 25),
        ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
           child: Text( AppTranslations.of(context).text("String3"),
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 16),),
          ),
           Container(
            margin: EdgeInsets.only(left: 62,right: 62,top: 40),
            child:  InkWell(
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
                      AppTranslations.of(context).text("Continue"),
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                onTap: () {
                 Navigator.of(context).pushNamed('/settings');
                },
              ),
          )
              ],
            ),
          ),
         
          ],
        ),
      ),
     
    );
  }
}