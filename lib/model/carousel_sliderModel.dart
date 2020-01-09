import 'package:drivertube/src/widgets/carouselwidget.dart';

class CarouselImages{
  String _imagepath;
  String _imagename;

  CarouselImages(this._imagename , this._imagepath);

  set imagepath(String path){
    this._imagepath=path;
  }
  set imagename(String name){
    this._imagename=name;
  }
 

  String get imagepath => this._imagepath;
  String get imagename => this._imagename;


  
}
class CarouselValues{
  String _currentValue;
  
CarouselValues(this._currentValue);

 String current(String value){
  _currentValue=value;
}

  set currentvalue(String value){
   this._currentValue=value;
 }

  String get currentvalue => this._currentValue;
}