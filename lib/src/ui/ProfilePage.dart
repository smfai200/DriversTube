import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:drivertube/applocalization/appTranslations.dart';
import 'package:drivertube/colors/colors.dart';
import 'package:drivertube/src/ui/SavedPostPage.dart';
import 'package:drivertube/src/widgets/DistanceShape.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
 List<DummyClass> _dummylist = [
    DummyClass("Assets/images/Sped4.jpg", "Speed", "20", "13 June,2019  19:32",
        "Over speeding motorcycles", "New York USA", "21", "15", "34"),
    DummyClass(
        "Assets/images/Taxi-BusReport8.jpg",
        "Tax-Bus",
        "22",
        "13 June,2019  19:32",
        "Reckless bus driver",
        "New York USA",
        "54",
        "32",
        "78"),
    DummyClass(
        "Assets/images/OvertakingReport6.jpg",
        "Taxi-Bus",
        "23",
        "13 June,2019  19:32",
        "Crazy texi driver driving high speed",
        "New York USA",
        "35",
        "10",
        "93"),
         DummyClass(
        "Assets/images/RedLight3.jpg",
        "Taxi-Bus",
        "23",
        "13 June,2019  19:32",
        "Signal Voilation",
        "New York USA",
        "35",
        "10",
        "93"),
  ];



  bool _checkvalue = false;
  String tempvalue;
  String gendervalue = "Female";
  int valuee = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
         //  crossAxisAlignment: CrossAxisAlignment.start,
            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(MyColors().appcolor),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.black,
                                blurRadius: 05.0,
                              ),
                            ]),
                        child: Container(
                          height: 100,
                         
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("Assets/icons/FaceIcon.png"),
                              fit: BoxFit.contain
                            )
                          ),
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: InkWell(
                        child: Text(
                            AppTranslations.of(context).text("Change Photo"),
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(MyColors().Green))),
                        onTap: () {
                          _showProfileDialog();
                        },
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                margin: EdgeInsets.only(top: 20, right: 17, left: 17),
                decoration: BoxDecoration(
                    color: Color(MyColors().appcolor),
                    border: Border.all(color: Color(0xFF242A37), width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black,
                        blurRadius: 05.0,
                      )
                    ]),
                child: Column(
                 
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      //  height: 32,
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: ImageIcon(
                              AssetImage('Assets/icons/FullName.png'),
                              size: 18,
                              color: Color(MyColors().Blue),
                            ),
                          ),
                          Expanded(
                            //    width: 300,
                            //   margin: EdgeInsets.only(left: 10,right: 10),
                            child: Text(
                              "Denise Smith",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        child: Divider(
                          color: Colors.white,
                        )),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: ImageIcon(
                              AssetImage('Assets/icons/UserName.png'),
                              size: 18,
                              color: Color(MyColors().Blue),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "dsmith",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                /*
                                Container(
                                  margin: EdgeInsets.only(bottom: 2),
                                  height: 12,
                                  width: 50,
                                 
                                  child: _available(),
                                ),
                                */
                                Text(
                                  "5" + "/12",
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 12.0),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            left: 10, right: 10, bottom: 5, top: 5),
                        child: Divider(
                          color: Colors.white,
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: ImageIcon(
                              AssetImage('Assets/icons/Email.png'),
                              size: 18,
                              color: Color(MyColors().Blue),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "deniesmith@gmail.com",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            left: 10, right: 10, bottom: 5, top: 5),
                        child: Divider(
                          color: Colors.white,
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 10, bottom: 5),
                            child: ImageIcon(
                              AssetImage('Assets/icons/Gender.png'),
                              size: 18,
                              color: Color(MyColors().Blue),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: InkWell(
                                child: Text(
                                    AppTranslations.of(context)
                                        .text(gendervalue),
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white70)),
                                onTap: () {
                                  // _showgenderDiloge();
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20, right: 17, left: 17),
                  child: Text(AppTranslations.of(context).text("My Post"),
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(MyColors().Green)))),
                  ],
                ),
              ),
             Expanded(child: Container(
         
          child: ListView.builder(
            itemCount: _dummylist.length,
            itemBuilder: (context, index) {
              return Container(
                  margin: EdgeInsets.only(left: 17, right: 17, top: 10),
                  //  height: 150,
                  child: Column(
                  
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 102,
                            height: 150,
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              image: DecorationImage(
                                  image: AssetImage(_dummylist[index].image),
                                  fit: BoxFit.fill),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        child: Column(
                                          children: <Widget>[
                                            Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            ImageIcon(
                                              AssetImage(
                                                  "Assets/icons/Video.png"),
                                              size: 10,
                                              color: Colors.white,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    00, 00, 00, 0.3),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(2)),
                                              ),
                                              child: Text(
                                                _dummylist[index].category,
                                                style: TextStyle(
                                                    fontSize: 4,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    00, 00, 00, 0.3),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(2)),
                                              ),
                                              child: Row(
                                                children: <Widget>[
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        right: 2),
                                                    child: ImageIcon(
                                                      AssetImage(
                                                          "Assets/icons/Weather.png"),
                                                      color: Colors.white,
                                                      size: 4,
                                                    ),
                                                  ),
                                                  Text(
                                                    _dummylist[index].weather +
                                                        " \u2103",
                                                    style: TextStyle(
                                                        fontSize: 4,
                                                        color: Colors.white),
                                                  )
                                                ],
                                              ),
                                            ),

                                          ],
                                        ),
                                         Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      margin:
                                          EdgeInsets.only( top: 5),
                                      child: CustomPaint(
                                        child: Container(
                                            padding: EdgeInsets.all(2),
                                            height: 17,
                                            width: 17,
                                            child: Center(
                                              child: Column(
                                                children: <Widget>[
                                                  Text(
                                                    "70",
                                                    style: TextStyle(
                                                        fontSize: 4,
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    "km/hr",
                                                    style:
                                                        TextStyle(fontSize: 4),
                                                  )
                                                ],
                                              ),
                                            )),
                                        painter: DistanceShape(1),
                                      ),
                                    )
                                  ],
                                ),
                                          ],
                                        )
                                      )
                                    ],
                                  ),
                                ),
                               
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(00, 00, 00, 0.3),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(2)),
                                      ),
                                      child: Text(
                                        _dummylist[index].date,
                                        style: TextStyle(
                                            fontSize: 4, color: Colors.white),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Column(
                              //  mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 200,

                                  //  margin: EdgeInsets.only(right: 20,
                                  // ),
                                  child: Text(
                                    _dummylist[index].title,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  margin: EdgeInsets.only(top: 10),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      ImageIcon(
                                        AssetImage("Assets/icons/Location.png"),
                                        size: 12,
                                        color: Color(MyColors().Green),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Text(
                                          _dummylist[index].location,
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                    width: 200,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text(
                                      _dummylist[index].views +
                                          " Views  " +
                                          "|  " +
                                          _dummylist[index].likes +
                                          " Likes  " +
                                          "|  " +
                                          _dummylist[index].dislikes +
                                          " Dislikes  ",
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 12),
                                    )),
                                Container(
                                  width: 200,
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text(
                                    "Published on " + _dummylist[index].date,
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white70),
                                  ),
                                ),
                                Container(
                      margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: Container(
                            margin: EdgeInsets.all(2.0),
                            width: 95,
                            padding: EdgeInsets.all(3),
                            // height: 29,

                            decoration: BoxDecoration(
                                color: Color(MyColors().Green),
                                border: Border.all(
                                    color: Color(MyColors().Green), width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 05.0,
                                  )
                                ]),

                            child: Center(
                              child: Text(
                                AppTranslations.of(context).text("Edit"),
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ),
                          onTap: () {
                            setState(() {

                            //  categoryvalue = value;
                           //   Navigator.pop(context);
                            });
                          },
                        ),
                     Container(
                       margin: EdgeInsets.only(left: 5),
                       child:    InkWell(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: Container(
                            margin: EdgeInsets.all(2.0),
                            padding: EdgeInsets.all(3),
                            width: 95,
                           //  height: 29,

                            decoration: BoxDecoration(
                                color: Color(MyColors().appcolor),
                                border: Border.all(
                                    color: Color(MyColors().Green), width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 05.0,
                                  )
                                ]),

                            child: Center(
                              child: Text(
                                AppTranslations.of(context).text("Delete"),
                                style: TextStyle(
                                    fontSize: 15, color: Color(MyColors().Green)),
                              ),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                                                         
                            //  categoryvalue = value;
                             _showRemoveDiloge(index);
                            });
                          },
                        ),
                     )
                      ],
                    ),
                    ),
                              ],
                            ),
                          ),
                        ],
                      ),
                     
                    ],
                  ));
            },
          )),)
            
            ],
          ),
        ));
  }

   _showRemoveDiloge(var index){
     return showDialog(
        context: context,
        builder: (BuildContext context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 02, sigmaY: 02),
            child: Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(05.0)),
              backgroundColor: Color(MyColors().appcolor),
              child: Container(
                height: 180,
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    Container( 

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                           Text(AppTranslations.of(context).text("String7"),style: TextStyle(fontSize: 16,color: Colors.white,),),
                           Container(
                             margin: EdgeInsets.only(
                               top: 5
                             ),
                             child: Text(AppTranslations.of(context).text("String9"),style: TextStyle(fontSize: 16,color: Colors.white,),),
                           )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 26),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: Container(
                            margin: EdgeInsets.all(2.0),
                            width: 112,
                            padding: EdgeInsets.all(5),
                            // height: 29,

                            decoration: BoxDecoration(
                                color: Color(MyColors().Green),
                                border: Border.all(
                                    color: Color(MyColors().Green), width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 05.0,
                                  )
                                ]),

                            child: Center(
                              child: Text(
                                AppTranslations.of(context).text("Confirm"),
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              _dummylist.removeAt(index);
                            //  categoryvalue = value;
                              Navigator.pop(context);
                            });
                          },
                        ),
                     Container(
                       margin: EdgeInsets.only(left: 5),
                       child:    InkWell(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: Container(
                            margin: EdgeInsets.all(2.0),
                            padding: EdgeInsets.all(5),
                            width: 112,
                           //  height: 29,

                            decoration: BoxDecoration(
                                color: Color(MyColors().appcolor),
                                border: Border.all(
                                    color: Color(MyColors().Green), width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 05.0,
                                  )
                                ]),

                            child: Center(
                              child: Text(
                                AppTranslations.of(context).text("Cancel"),
                                style: TextStyle(
                                    fontSize: 15, color: Color(MyColors().Green)),
                              ),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                            //  categoryvalue = value;
                              Navigator.pop(context);
                            });
                          },
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
          );
        });
  }



  _available() {
    if (valuee != 0) {
      return Text(
        "available",
        style: TextStyle(fontSize: 10, color: Color(MyColors().Green)),
      );
    } else {
      return null;
    }
  }

  _showProfileDialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 02, sigmaY: 02),
            child: Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(05.0)),
              backgroundColor: Color(MyColors().appcolor),
              child: Container(
                height: 265,
                child: Center(
                    child: Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                  margin: EdgeInsets.only(right: 8),
                                  decoration: BoxDecoration(
                                      color: Color(MyColors().appcolor),
                                      border: Border.all(
                                          color: Color(0xFF242A37), width: 3),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(6)),
                                      boxShadow: [
                                        new BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 05.0,
                                        ),
                                      ]),
                                  child: Container(
                                    margin: EdgeInsets.all(20),
                                    child: Center(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(bottom: 20),
                                            child: Image(
                                              image: AssetImage(
                                                  'Assets/icons/Camera.png'),
                                              height: 34.74,
                                              width: 43.43,
                                            ),
                                          ),
                                          Text(
                                            AppTranslations.of(context)
                                                .text("Take Photo"),
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                            ),
                            Expanded(
                              child: Container(
                                  margin: EdgeInsets.only(left: 8),
                                  decoration: BoxDecoration(
                                      color: Color(MyColors().appcolor),
                                      border: Border.all(
                                          color: Color(0xFF242A37), width: 3),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(6)),
                                      boxShadow: [
                                        new BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 05.0,
                                        ),
                                      ]),
                                  child: Container(
                                    margin: EdgeInsets.all(20),
                                    child: Center(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(bottom: 20),
                                            child: Image(
                                              image: AssetImage(
                                                  'Assets/icons/Photos.png'),
                                              height: 34.74,
                                              width: 43.43,
                                            ),
                                          ),
                                          Text(
                                            AppTranslations.of(context)
                                                .text("From Photos"),
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          //   width: 341,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(MyColors.appColor),
                              border: Border.all(
                                  color: Color(MyColors().Green), width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              boxShadow: [
                                new BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 05.0,
                                )
                              ]),
                          child: Center(
                            child: Text(
                              AppTranslations.of(context).text("Cancel"),
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(
                                    MyColors().Green,
                                  ),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                      ),
                    ],
                  ),
                )),
              ),
            ),
          );
        });
  }

  _showgenderDiloge() {
    setState(() {
      tempvalue = "Male";
    });
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 02, sigmaY: 02),
            child: Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(05.0)),
              backgroundColor: Color(MyColors().appcolor),
              child: Container(
                height: 211,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 19),
                        child: Text(
                            AppTranslations.of(context).text("Choose Gender"),
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Container(

                              // width: 300,
                              height: 95,
                              child: _carouselgenderWidget())),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: InkWell(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            width: 112,
                            // height: 29,

                            decoration: BoxDecoration(
                                color: Color(MyColors().Green),
                                border: Border.all(
                                    color: Color(MyColors().Green), width: 3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.black,
                                    // offset: new Offset(0.0, 0.0),
                                    blurRadius: 05.0,
                                  )
                                ]),

                            child: Center(
                              child: Text(
                                AppTranslations.of(context).text("Ok"),
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              gendervalue = tempvalue;
                              Navigator.pop(context);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  _carouselgenderWidget() {
    return CarouselSlider(
        height: 95,
        autoPlay: false,
        enlargeCenterPage: true,
        viewportFraction: 0.3,
        aspectRatio: 3.0,
        scrollDirection: Axis.vertical,
        onPageChanged: (index) {
          setState(() {
            tempvalue = _genderlist[index];
          });
        },
        items: map<Widget>(
          _genderlist,
          (index, i) {
            return Container(
                margin: EdgeInsets.all(5.0),
                child: Center(
                    child: ClipRect(
                  child: Text(
                      AppTranslations.of(context).text(_genderlist[index]),
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                )));
          },
        ).toList());
  }

  List<String> _genderlist = [
    "Male",
    "Female",
    "Rather not Say",
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }
}
