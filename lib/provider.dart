
import 'package:flutter/material.dart';

import 'package:drivertube/applocalization/appTranslationsDelegate.dart';
import 'package:weather/weather.dart';
 
class Provider extends InheritedWidget{
final AppTranslationsDelegate newLocaleDelegate;


  //final Color color;

  Provider({
    Key key,
    this.newLocaleDelegate,
    
    Widget child,
  }) : super(key: key, child:child);


  @override
  bool updateShouldNotify(Provider oldWidget) {
    
    return true;
  }

  static Provider of(BuildContext context)=>(context.inheritFromWidgetOfExactType(Provider) as Provider );

}