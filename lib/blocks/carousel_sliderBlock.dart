import 'dart:async';

import 'package:drivertube/model/carousel_sliderModel.dart';
import 'package:flutter/material.dart';

class CarouselSliderBlock{
   
  String value="Not Selected";
  final _valuestreamcontroller=StreamController<String>();
  final _valuechangestreamcontroller=StreamController<String>();
   Stream<String> get valuelistStream => _valuestreamcontroller.stream;
   StreamSink<String> get valuelistsink => _valuestreamcontroller.sink;
   StreamSink<String> get valuechangelistsink => _valuechangestreamcontroller.sink;
   CarouselSliderBlock(){
   _valuestreamcontroller.add(value); 
   _valuechangestreamcontroller.stream.listen(_change);

 }
  @override
 void dispose() { 
 _valuestreamcontroller.close();  
 _valuechangestreamcontroller.close();
 }
 _change(String value){
  this.value=value;
   valuelistsink.add(value);
 }



  /*
  List<CarouselImages> _imagelist=[
    CarouselImages("Parking",   "Assets/images/Parking1.jpg"),
    CarouselImages("Dangerous Driving",   "Assets/images/DangerousDriving2.jpg"),
    CarouselImages("Red Light",    "Assets/images/RedLight3.jpg",),
    CarouselImages("Speed",    "Assets/images/Sped4.jpg"),
    CarouselImages("Pedestrian Violations",    "Assets/images/PedestrianViolation5.jpg"),
    CarouselImages("Overtaking",    "Assets/images/OvertakingReport6.jpg"),
        CarouselImages("Trafic Signs",    "Assets/images/TrafficSignsReport7.jpg"),
    CarouselImages("Taxi-Bus",    "Assets/images/Taxi-BusReport8.jpg" ),
    CarouselImages("Bad Light",    "Assets/images/BadLight9.jpg" ),
    CarouselImages("Others",    "Assets/images/Others10.jpg"),


  ];

 final _imageliststreamcontroller=StreamController<List<CarouselImages>>();
 Stream<List<CarouselImages>> get imagelistStream => _imageliststreamcontroller.stream;

 CarouselSliderBlock(){
   _imageliststreamcontroller.add(_imagelist);

 }

 @override
 void dispose() { 
 _imageliststreamcontroller.close();  
 }
  

*/
}