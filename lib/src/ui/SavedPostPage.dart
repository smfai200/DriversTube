import 'dart:ui';

import 'package:drivertube/applocalization/appTranslations.dart';
import 'package:drivertube/colors/colors.dart';
import 'package:drivertube/src/widgets/DistanceShape.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SavedPostPage extends StatefulWidget {
  SavedPostPage({Key key}) : super(key: key);

  @override
  _SavedPostPageState createState() => _SavedPostPageState();
}

class _SavedPostPageState extends State<SavedPostPage> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(MyColors().appcolor),
      appBar: AppBar(
        backgroundColor: Color(MyColors().appcolor),
        centerTitle: true,
        // automaticallyImplyLeading: false,
        title: Text(
          AppTranslations.of(context).text("Saved Posts"),
          style: TextStyle(
              color: Color(MyColors().Green),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        elevation: 10,
      ),
      body: Container(
          margin: EdgeInsets.only(top: 15),
          child: ListView.builder(
            itemCount: _dummylist.length,
            itemBuilder: (context, index) {
              return Container(
                  margin: EdgeInsets.only(left: 17, right: 17, top: 5),
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
                                        _dummylist[index]._date,
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
                                  width: 200,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      InkWell(
                                        child: Image(
                                          image: AssetImage(
                                              "Assets/icons/delete.png"),
                                          height: 23,
                                          width: 20,
                                          color: Color(MyColors().Green),
                                        ),
                                        onTap: (){
                                          _showRemoveDiloge(index);
                                        },
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Divider(
                            color: Colors.white,
                          ))
                    ],
                  ));
            },
          )),
    );
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
                             child: Text(AppTranslations.of(context).text("String8"),style: TextStyle(fontSize: 16,color: Colors.white,),),
                           )
                        ],
                      ),
                    ),
                    Container(
                    //  margin: EdgeInsets.only(top: 26),
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
}

class DummyClass {
  String _image;
  String _category;
  String _weather;
  String _date;
  String _title;
  String _location;
  String _views;
  String _likes;
  String _dislikes;
  DummyClass(this._image, this._category, this._weather, this._date,
      this._title, this._location, this._views, this._likes, this._dislikes);
  String get image => _image;
  String get category => _category;
  String get weather => _weather;
  String get date => _date;
  String get title => _title;
  String get location => _location;
  String get views => _views;
  String get likes => _likes;
  String get dislikes => _dislikes;
}
