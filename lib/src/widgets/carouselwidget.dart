import 'package:carousel_slider/carousel_slider.dart';
import 'package:drivertube/applocalization/appTranslations.dart';
import 'package:drivertube/blocks/carousel_sliderBlock.dart';
import 'package:drivertube/model/carousel_sliderModel.dart';
import 'package:flutter/material.dart';

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







class CarouselWidget extends StatefulWidget {

  const CarouselWidget({Key key}) : super(key: key);

  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  String currentvalue=_imagelist[0].imagename;

 // CarouselValues values=new CarouselValues();
   @override
   Widget build(BuildContext context) {

   
         
    return  CarouselSlider(
      height: 105,
      autoPlay: false,
      enlargeCenterPage: true,
     viewportFraction: 0.5,
      aspectRatio: 1.0,
      onPageChanged: (index){
        setState((){

        //  CarouselValues(_imagelist[index].imagename);
//          values.currentvalue=_imagelist[index].imagename;

        //  currentvalue=_imagelist[index].imagename;
  //        print(values.currentvalue);
         });
      },
      items:map<Widget>(
  _imagelist,
  (index, i) {
    return Container(
     // height: 105.66,width: 160,
     // height: 110,
    margin: EdgeInsets.all(5.0),
      child: ClipRRect(
      
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        
        child: Stack(children: <Widget>[
          Image(image: AssetImage(_imagelist[index].imagepath),width: 160, fit: BoxFit.cover,),

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
).toList()
     );
    
   }
}