import 'package:drivertube/applocalization/appTranslations.dart';
import 'package:drivertube/colors/colors.dart';
import 'package:flutter/material.dart';

class LanguagePage extends StatefulWidget {
  LanguagePage({Key key}) : super(key: key);

  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  static String activelanguage = "English";
  static int activecolor = MyColors().Green;
  static int inactivecolor = 0xFF4E586E;
  int box1 = MyColors().Green;
  int box2 = inactivecolor;
  int box3 = inactivecolor;
  int box4 = inactivecolor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(MyColors().appcolor),
      appBar: AppBar(
        backgroundColor: Color(MyColors().appcolor),
        title: Text(
          AppTranslations.of(context).text("Language"),
          style: TextStyle(
              color: Color(MyColors().Green),
              fontWeight: FontWeight.w600,
              fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20, left: 17, right: 17),
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  //  margin: EdgeInsets.all(8.0),
                  //   width: 341,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color(MyColors.appColor),
                    border: Border.all(color: Color(box1), width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 38,
                              width: 59,
                              margin: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "Assets/images/UsaFlag.png"),
                                      fit: BoxFit.fill)),
                            ),
                            Text(
                              "English",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      _showCheckedBox1()
                    ],
                  ),
                ),
                onTap: () {
                  _select("English");
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 17, right: 17),
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  //  margin: EdgeInsets.all(8.0),
                  //   width: 341,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color(MyColors.appColor),
                    border: Border.all(color: Color(box2), width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 38,
                              width: 59,
                              margin: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "Assets/images/SpainFlag.png"),
                                      fit: BoxFit.fill)),
                            ),
                            Text(
                              "Español",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      _showCheckedBox2()
                    ],
                  ),
                ),
                onTap: () {
                  _select("Spain");
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 17, right: 17),
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  //  margin: EdgeInsets.all(8.0),
                  //   width: 341,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color(MyColors.appColor),
                    border: Border.all(color: Color(box3), width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 38,
                              width: 59,
                              margin: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "Assets/images/GermanFlag.png"),
                                      fit: BoxFit.fill)),
                            ),
                            Text(
                              "Deutsche",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      _showCheckedBox3()
                    ],
                  ),
                ),
                onTap: () {
                  _select("German");
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 17, right: 17),
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  //  margin: EdgeInsets.all(8.0),
                  //   width: 341,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color(MyColors.appColor),
                    border: Border.all(color: Color(box4), width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 38,
                              width: 59,
                              margin: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "Assets/images/TurkeyFlag.png"),
                                      fit: BoxFit.fill)),
                            ),
                            Text(
                              "Türkçe",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      _showCheckedBox4()
                    ],
                  ),
                ),
                onTap: () {
                  _select("Turkey");
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  _select(String value) {
    switch (value) {
      case "English":
        setState(() {
          activelanguage = value;
          box1 = activecolor;
          box2 = inactivecolor;
          box3 = inactivecolor;
          box4 = inactivecolor;
        });
        break;
      case "Spain":
        setState(() {
          activelanguage = value;
          box1 = inactivecolor;
          box2 = activecolor;
          box3 = inactivecolor;
          box4 = inactivecolor;
        });
        break;
      case "German":
        setState(() {
          activelanguage = value;
          box1 = inactivecolor;
          box2 = inactivecolor;
          box3 = activecolor;
          box4 = inactivecolor;
        });
        break;
      case "Turkey":
        setState(() {
          activelanguage = value;
          box1 = inactivecolor;
          box2 = inactivecolor;
          box3 = inactivecolor;
          box4 = activecolor;
        });
        break;
    }
  }
  _showCheckedBox1() {
    if (activelanguage == "English") {
      return Container(
          height: 18,
          width: 18,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(color: Color(inactivecolor), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(2)),
          ),
          child: Icon(
            Icons.check,
            size: 15.0,
            color: Color(MyColors().Green),
          ));
    }
    else{
      return Container();
    }
  }
  _showCheckedBox2() {
    if (activelanguage == "Spain") {
      return Container(
          height: 18,
          width: 18,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(color: Color(inactivecolor), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(2)),
          ),
          child: Icon(
            Icons.check,
            size: 15.0,
            color: Color(MyColors().Green),
          ));
    }
    else{
      return Container();
    }
  }
   _showCheckedBox3() {
    if (activelanguage == "German") {
      return Container(
          height: 18,
          width: 18,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(color: Color(inactivecolor), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(2)),
          ),
          child: Icon(
            Icons.check,
            size: 15.0,
            color: Color(MyColors().Green),
          ));
    }
    else{
      return Container();
    }
  }
 
  _showCheckedBox4() {
    if (activelanguage == "Turkey") {
      return Container(
          height: 18,
          width: 18,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(color: Color(inactivecolor), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(2)),
          ),
          child: Icon(
            Icons.check,
            size: 15.0,
            color: Color(MyColors().Green),
          ));
    }
    else{
      return Container();
    }
  }
  
}
