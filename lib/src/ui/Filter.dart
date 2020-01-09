
import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:drivertube/applocalization/appTranslations.dart';

import 'package:drivertube/colors/colors.dart';
import 'package:drivertube/model/carousel_sliderModel.dart';
import 'package:drivertube/src/ui/ChooseLocation.dart';

import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  FilterPage({Key key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  String categoryvalue = "Not Selected";
  String datevalue = "Not Selected";
  String sortvalue = "Not Selected";
  String locationvalue = "Not Selected";
  double _slidervalue=0.0;

  String value = "Not Selected";
  double get myvalue => this._slidervalue;
  CarouselValues values = new CarouselValues(" ");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(MyColors().appcolor),
      appBar: AppBar(
        backgroundColor: Color(MyColors().appcolor),
        centerTitle: true,
        // automaticallyImplyLeading: false,
        title: Text(
          AppTranslations.of(context).text("Filter"),
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
              margin: EdgeInsets.only(top: 25),
              child: Column(
              children: <Widget>[
                Container(
            //  width: 341,
              height: 56,
              decoration: BoxDecoration(
                  color: Color(MyColors().appcolor),
                  border: Border.all(color: Color(0xFF242A37), width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black,
                     
                      blurRadius: 05.0,
                    )
                  ]),
            
              margin: EdgeInsets.only(right: 17, left: 17),
              child: InkWell(
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 17, top: 5),
                        height: 20,
                        //  color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            ImageIcon(
                              AssetImage('Assets/icons/Category.png'),
                              size: 14.49,
                              color: Color(MyColors().Green),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                  AppTranslations.of(context).text("Category"),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 37, bottom: 5),
                        // color: Colors.white,
                        height: 15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              AppTranslations.of(context).text(categoryvalue),
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                            _removecategory(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                onTap: () {
                  _showcatogaryDiloge();
                },
              ),
            ),
            Container(
             // width: 341,
              height: 56,
              decoration: BoxDecoration(
                  color: Color(MyColors().appcolor),
                  border: Border.all(color: Color(0xFF242A37), width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black,
                      blurRadius: 05.0,
                    )
                  ]),
              margin: EdgeInsets.only(top: 15, right: 17, left: 17),
              child: InkWell(
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 17, top: 5),
                        height: 20,
                        //  color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            ImageIcon(
                              AssetImage('Assets/icons/Clock.png'),
                              size: 14.49,
                              color: Color(MyColors().Green),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                  AppTranslations.of(context)
                                      .text("Upload Date"),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 37, bottom: 5),
                        // color: Colors.white,
                        height: 15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              AppTranslations.of(context).text(datevalue),
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                            _removeDate(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                onTap: () {
                  _showDateDiloge();
                },
              ),
            ),
            Container(
             //   width: 341,
                height: 56,
                decoration: BoxDecoration(
                    color: Color(MyColors().appcolor),
                    border: Border.all(color: Color(0xFF242A37), width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black,
                        // offset: new Offset(0.0, 0.0),
                        blurRadius: 05.0,
                      )
                    ]),
                // color:Colors.black ,
                margin: EdgeInsets.only(top: 15, right: 17, left: 17),
                child: InkWell(
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 17, top: 5),
                          height: 20,
                          //  color: Colors.white,
                          child: Row(
                            children: <Widget>[
                              ImageIcon(
                                AssetImage('Assets/icons/Location.png'),
                                size: 14.49,
                                color: Color(MyColors().Green),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                    AppTranslations.of(context)
                                        .text("Location"),
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 37, bottom: 5),
                          // color: Colors.white,
                          height: 15,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                AppTranslations.of(context).text(locationvalue),
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                              _removelocation(),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  onTap: () {

                    Navigator.push(context,MaterialPageRoute(builder: (conext) => ChooseLocation()));
                  //  _showLocation();
                  },
                )),
            Container(
             //   width: 341,
                height: 56,
                decoration: BoxDecoration(
                    color: Color(MyColors().appcolor),
                    border: Border.all(color: Color(0xFF242A37), width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black,
                        // offset: new Offset(0.0, 0.0),
                        blurRadius: 05.0,
                      )
                    ]),
                // color:Colors.black ,
                margin: EdgeInsets.only(top: 15, right: 17, left: 17),
                child: InkWell(
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 17, top: 5),
                          height: 20,
                          //  color: Colors.white,
                          child: Row(
                            children: <Widget>[
                              ImageIcon(
                                AssetImage('Assets/icons/SortBy.png'),
                                size: 14.49,
                                color: Color(MyColors().Green),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                    AppTranslations.of(context).text("Sort By"),
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 37, bottom: 5),
                          // color: Colors.white,
                          height: 15,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                AppTranslations.of(context).text(sortvalue),
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                              _removeSort(),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  onTap: () {
                    _showSortDiloge();
                  },
                )),
              ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 9, left: 9
              ,bottom: 140),
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
                      AppTranslations.of(context).text("Confirm"),
                      style: TextStyle(fontSize: 16, color: Colors.white),
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
    );
  }

  _removecategory() {
    if (categoryvalue == "Not Selected") {
      return Container(
        color: Colors.transparent,
      );
    } else {
      return Padding(
        padding: EdgeInsets.only(right: 17),
        child: InkWell(
          child:
              Text("Remove", style: TextStyle(fontSize: 12, color: Colors.red)),
          onTap: () {
            setState(() {
              categoryvalue = "Not Selected";
            });
          },
        ),
      );
    }
  }

  _removeDate() {
    if (datevalue == "Not Selected") {
      return Container(
        color: Colors.transparent,
      );
    } else {
      return Padding(
        padding: EdgeInsets.only(right: 17),
        child: InkWell(
          child:
              Text("Remove", style: TextStyle(fontSize: 12, color: Colors.red)),
          onTap: () {
            setState(() {
              datevalue = "Not Selected";
            });
          },
        ),
      );
    }
  }

  _removeSort() {
    if (sortvalue == "Not Selected") {
      return Container(
        color: Colors.transparent,
      );
    } else {
      return Padding(
        padding: EdgeInsets.only(right: 17),
        child: InkWell(
          child:
              Text("Remove", style: TextStyle(fontSize: 12, color: Colors.red)),
          onTap: () {
            setState(() {
              sortvalue = "Not Selected";
            });
          },
        ),
      );
    }
  }

  _removelocation() {
    if (locationvalue == "Not Selected") {
      return Container(
        color: Colors.transparent,
      );
    } else {
      return Padding(
        padding: EdgeInsets.only(right: 17),
        child: InkWell(
          child:
              Text("Remove", style: TextStyle(fontSize: 12, color: Colors.red)),
          onTap: () {
            setState(() {
              locationvalue = "Not Selected";
            });
          },
        ),
      );
    }
  }

  _showcatogaryDiloge() {
    setState(() {
      value = "Parking";
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
                height: 260,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                            AppTranslations.of(context).text("Choose Category"),
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 26),
                          child: Container(
                            //  width: 300,
                              height: 110,
                              child: _carouselCategoryWidget())),
                      Padding(
                        padding: EdgeInsets.only(top: 26),
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
                              categoryvalue = value;
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

  _showDateDiloge() {
    setState(() {
      value = "LastHour";
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
                            AppTranslations.of(context)
                                .text("Choose Upload Date"),
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Container(
                              // color: Colors.white,
                              width: 300,
                              height: 95,
                              child: _carouselDateWidget())),
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
                              datevalue = value;
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

  _showSortDiloge() {
    setState(() {
      value = "Relevance";
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
                        child: Text(AppTranslations.of(context).text("Sort By"),
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Container(
                              width: 300,
                              height: 95,
                              child: _carouselSortWidget())),
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
                              sortvalue = value;
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
  


  _carouselCategoryWidget() {
    return CarouselSlider(
        height: 105,
        autoPlay: false,
        enlargeCenterPage: true,
        viewportFraction: 0.5,
        aspectRatio: 1.0,
        onPageChanged: (index) {
          setState(() {
            value = _imagelist[index].imagename;
          });
        },
        items: map<Widget>(
          _imagelist,
          (index, i) {
            return Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(children: <Widget>[
                  Image(
                    image: AssetImage(_imagelist[index].imagepath),
                    width: 160,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 16.12,
                      padding: EdgeInsets.only(right: 4.0, left: 4.0),
                      margin: EdgeInsets.only(bottom: 6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                        color: Color.fromRGBO(00, 00, 00, 0.3),
                      ),
                      child: Text(
                        AppTranslations.of(context)
                            .text("${_imagelist[index].imagename}"),
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ),
                ]),
              ),
            );
          },
        ).toList());
  }

  _carouselDateWidget() {
    return CarouselSlider(
        height: 95,
        autoPlay: false,
        enlargeCenterPage: true,
        viewportFraction: 0.3,
        aspectRatio: 3.0,
        scrollDirection: Axis.vertical,
        onPageChanged: (index) {
          setState(() {
            value = _datelist[index];
          });
        },
        items: map<Widget>(
          _datelist,
          (index, i) {
            return Container(
                margin: EdgeInsets.all(5.0),
                child: Center(
                    child: ClipRect(
                  child: Text(
                      AppTranslations.of(context).text(_datelist[index]),
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                )));
          },
        ).toList());
  }

  _carouselSortWidget() {
    return CarouselSlider(
        height: 95,
        autoPlay: false,
        enlargeCenterPage: true,
        viewportFraction: 0.3,
        aspectRatio: 3.0,
        scrollDirection: Axis.vertical,
        onPageChanged: (index) {
          setState(() {
            value = _sortlist[index];
          });
        },
        items: map<Widget>(
          _sortlist,
          (index, i) {
            return Container(
                margin: EdgeInsets.all(5.0),
                child: Center(
                    child: ClipRect(
                  child: Text(
                      AppTranslations.of(context).text(_sortlist[index]),
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                )));
          },
        ).toList());
  }

  List<String> _sortlist = [
    "Relevance",
    "Upload Date",
    "View Count",
    "Rating",
  ];

  List<String> _datelist = [
    "LastHour",
    "Today",
    "This Week",
    "This Month",
    "This Year"
  ];

  List<CarouselImages> _imagelist = [
    CarouselImages("Parking", "Assets/images/Parking1.jpg"),
    CarouselImages("Dangerous Driving", "Assets/images/DangerousDriving2.jpg"),
    CarouselImages(
      "Red Light",
      "Assets/images/RedLight3.jpg",
    ),
    CarouselImages("Speed", "Assets/images/Sped4.jpg"),
    CarouselImages(
        "Pedestrian Violations", "Assets/images/PedestrianViolation5.jpg"),
    CarouselImages("OverTaking", "Assets/images/OvertakingReport6.jpg"),
    CarouselImages("Trafic Signs", "Assets/images/TrafficSignsReport7.jpg"),
    CarouselImages("TaxiBus", "Assets/images/Taxi-BusReport8.jpg"),
    CarouselImages("Bad Light", "Assets/images/BadLight9.jpg"),
    CarouselImages("Others", "Assets/images/Others10.jpg"),
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }
}
