import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:drivertube/applocalization/appTranslations.dart';
import 'package:drivertube/colors/colors.dart';
import 'package:drivertube/model/carousel_sliderModel.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  PostPage({Key key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  bool _switch=false;
   String categoryvalue = "Not Selected";
   String value = "Not Selected";
   var valuee=0;
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
          AppTranslations.of(context).text("Post"),
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
              margin: EdgeInsets.only(top:20,left: 17,right: 17),
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
            
            //  margin: EdgeInsets.only(right: 17, left: 17),
              child: InkWell(
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 10, top: 5),
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
                              padding: EdgeInsets.only(left: 10),
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
                        child: Text(
                              AppTranslations.of(context).text(categoryvalue),
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
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
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(left: 10,right: 15),
              decoration: BoxDecoration(
                      color: Colors.transparent,
                      border:
                          Border.all(color: Color(MyColors().Green), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      
                      ),
                
                           //    width: 300,
                           //   margin: EdgeInsets.only(left: 10,right: 10),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: TextField(
                                       onChanged: (text){
                                  setState(() {
                                                                     valuee=text.length;
                                  });

                               
                                },
                    maxLines: 1,
                    decoration: InputDecoration(
                      isDense: true,
                      border: InputBorder.none,
                     // counterStyle: TextStyle(color: Color(0xFF4E586E)),
                      hintText: AppTranslations.of(context).text("Add Title"),
                      hintStyle:
                          TextStyle(color: Colors.white70, fontSize: 16.0),
                        counter: Offstage()
                          
                    ),
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    
                    ),
                    maxLength: 40,
                  
                  ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 20),
                                    child: Text(valuee.toString()+"/40",style:  TextStyle(color: Colors.white70, fontSize: 12.0),),
                                  )
                                ],
                              )
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              padding: EdgeInsets.only(left: 10,right: 10),
                                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border:
                          Border.all(color: Color(MyColors().Green), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      
                      ),
                               child: TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      border: InputBorder.none,
                     counterStyle: TextStyle(color: Colors.white70),
                      hintText: AppTranslations.of(context).text("Add Description"),
                      hintStyle:
                          TextStyle(color: Colors.white70, fontSize: 16.0),
                      //  counter: Offstage()
                          
                    ),
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    
                    ),
                    maxLength: 150,
                    maxLines: 6,
                  
                  ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                  child:  Row(
                                    children: <Widget>[
                                      Image(image:AssetImage("Assets/icons/Postanon.png"),height: 16,width: 20,),
                                      Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Text(AppTranslations.of(context).text("Post Anonymously"),style: TextStyle(color: Colors.white, fontSize: 16),),
                                      ),
                                      
                                    ],
                                  )
                                  ),
                                   InkWell(
                            child:   _switchOne(),
                            onTap: (){
                              setState(() {
                                if(_switch){
                                  _switch=false;
                                }
                                else{
                                  _switch=true;
                                }
                              });
                            },
                          ),
                                ],
                              ),
                            )
           
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10,bottom: 50),
              child: Column(
                children: <Widget>[
                  InkWell(
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
                      AppTranslations.of(context).text("Post"),
                      style: TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                   Navigator.of(context).pushNamed('/postdone');
                  });
                },
              ),
              InkWell(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  margin: EdgeInsets.all(8.0),
               //   width: 341,
                  height: 56,
                  decoration: BoxDecoration(
                      color: Color(MyColors().appcolor),
                      border:
                          Border.all(color: Color(MyColors().Green), width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black,
                          blurRadius: 05.0,
                        )
                      ]),
                  child: Center(
                    child: Text(
                      AppTranslations.of(context).text("Cancel"),
                      style: TextStyle(fontSize: 16, color: Color(MyColors().Green),fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                   Navigator.of(context).pushNamedAndRemoveUntil( '/bottomapbar',(Route<dynamic> route)=>false);
                  });
                },
              ),
                ],
              ),
            )
          ],
        ),
      ),
    );
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
  _switchOne(){
   if(_switch){
     return Image(image:AssetImage("Assets/icons/OnSwitch.png"),width: 32,height: 16,);
   }
   else{
     return Image(image:AssetImage("Assets/icons/OffSwitch.png"),width: 32,height: 16,);
   }
  }
}