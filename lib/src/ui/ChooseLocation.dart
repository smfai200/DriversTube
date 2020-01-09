import 'package:drivertube/applocalization/appTranslations.dart';
import 'package:drivertube/colors/colors.dart';
import 'package:drivertube/src/widgets/SliderShape.dart';
import 'package:drivertube/src/widgets/ValueIndicatorShape.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  ChooseLocation({Key key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  String locationvalue = "Not Selected";
  double _slidervalue = 0.0;

  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        backgroundColor: Color(MyColors().appcolor),
        appBar: AppBar(
          backgroundColor: Color(MyColors().appcolor),
          centerTitle: true,
          // automaticallyImplyLeading: false,
          title: Text(
            AppTranslations.of(context).text("Choose Location"),
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
          ),
          elevation: 10,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Container(
                  //  height: 50,
                    margin: EdgeInsets.only(bottom: 16),
                  color: Colors.white,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        color: Colors.black,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 42,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3)),
                              color: Colors.white),
                          margin: EdgeInsets.only(top: 15, left: 17, right: 17),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: ImageIcon(
                                  AssetImage('Assets/icons/Location.png'),
                                  size: 14.49,
                                  color: Color(MyColors().Green),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                    AppTranslations.of(context)
                                        .text(locationvalue),
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 24, top: 16),
                child: Column(
                  children: <Widget>[
                    Container(
                        height: 30,
                        // color:Colors.white,
                        margin: EdgeInsets.only(left: 24, right: 24),
                        // color: Colors.black,
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: ImageIcon(
                                AssetImage('Assets/icons/Home.png'),
                                size: 24,
                                color: Colors.white,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Stack(
                                // mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      
                                      margin: EdgeInsets.only(
                                          left: 5, right: 5, bottom: 8),
                                      child: SliderTheme(child: Slider(
                                        
                                        label: "${_slidervalue.round()}",
                                        divisions: 100,
                                    //  activeColor: Color(MyColors().Green),
                                        onChanged: (double value) {
                                          setState(() {
                                            _slidervalue = value;
                                           
                                           
                                          });
                                        },
                                        value: _slidervalue,
                                        min: 0.0,
                                        max: 100.0,
                                      ), data: SliderTheme.of(context).copyWith(
                                        trackHeight: 2,
                                        activeTrackColor: Color(MyColors().Green),
                                        thumbColor: Color(MyColors().Green),
                                        inactiveTrackColor: Colors.white12,
                                        thumbShape: RetroSliderThumbShape(3),
                                        valueIndicatorColor: Colors.black,
                                        valueIndicatorShape: RetroSliderValue(8),
                                    //    showValueIndicator: ShowValueIndicator.always,
                                      
                                        
                                        

                                      ),),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(left: 28, right: 28),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            ".",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            ".",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            ".",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            ".",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            ".",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            ".",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            ".",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            ".",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            ".",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            ".",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: ImageIcon(
                                AssetImage('Assets/icons/Path.png'),
                                size: 24,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 18, right: 24, left: 24),
                      child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          //   width: 341,
                          height: 56,
                          decoration: BoxDecoration(
                              color: Color(MyColors().Green),
                              border: Border.all(
                                  color: Color(MyColors().Green), width: 3),
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
                              AppTranslations.of(context).text("Confirm"),
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
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
                ),
              ),
            ],
          ),
        ));
  }
}
