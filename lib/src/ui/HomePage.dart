import 'dart:ui';

import 'package:drivertube/applocalization/appTranslations.dart';

import 'package:drivertube/blocks/carousel_sliderBlock.dart';
import 'package:drivertube/colors/colors.dart';
import 'package:drivertube/model/carousel_sliderModel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CarouselSliderBlock _carouselSliderBlock = CarouselSliderBlock();

  @override
  void dispose() {
    _carouselSliderBlock.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(MyColors().appcolor),
      appBar: AppBar(
        backgroundColor: Color(MyColors().appcolor),
        centerTitle: true,
        title: Container(
          width: 165,
          height: 27,
          child: Image(
            image: AssetImage("Assets/images/logo.png"),
          ),
        ),
        leading: Container(
          width: 25.00,
          height: 16.24,
          margin: EdgeInsets.only(left: 17.03),
          child: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.white,
            onPressed: () {
               Navigator.of(context).pushNamed('/menu');
            },
          ),
        ),
        automaticallyImplyLeading: false,
        actions: <Widget>[ 
          
          InkWell(
            
             borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
            child: Container(
               padding: EdgeInsets.all(4.0),
              margin: EdgeInsets.only(right: 17.03),
              child: ImageIcon(
                AssetImage("Assets/icons/filter.png"),
                size: 15.24,
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/filter');
            
            },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 75,
                decoration: BoxDecoration(
                    color: Color(0xFF242A37),
                    border: Border(
                        top: BorderSide(width: 0.5, color: Color(0xFF4E596E))),

                    //   border: Border.all(color: Color(0xFF4E596E), width: 1),
                    //  borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black,
                        offset: new Offset(02.0, 02.0),
                        blurRadius: 05.0,
                      )
                    ]),
                child: _buildselectlistview(),

                /*  StreamBuilder<List<CarouselImages>>(
                  stream: _carouselSliderBlock.imagelistStream,
                  builder: (BuildContext context,
                      AsyncSnapshot<List<CarouselImages>> snapshot) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(8.0),
                          width: 95,
                          height: 63,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "${snapshot.data[index].imagepath}"),
                              )),
                        );
                      },
                    );
                  },
                ),
                */
              ),
            ],
          ),
        ],
      ),
    );
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

  _buildselectlistview() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _imagelist.length,
      itemBuilder: (context, index) {
        return InkWell(
          child: Container(
              margin: EdgeInsets.all(8.0),
              width: 95,
              height: 63,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("${_imagelist[index].imagepath}"),
                  )),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.only(right: 4.0, left: 4.0),
                  margin: EdgeInsets.only(bottom: 4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                    color: Color.fromRGBO(00, 00, 00, 0.3),
                  ),
                  child: Text(
                    AppTranslations.of(context)
                        .text("${_imagelist[index].imagename}"),
                    style: TextStyle(fontSize: 8, color: Colors.white),
                  ),
                ),
              )),
          onTap: () {},
        );
      },
    );
  }
}
