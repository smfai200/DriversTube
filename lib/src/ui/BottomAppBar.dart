import 'package:drivertube/colors/colors.dart';
import 'package:drivertube/customappbar/bar.dart';
import 'package:drivertube/customappbar/item.dart';
import 'package:drivertube/src/ui/CameraPage.dart';
import 'package:drivertube/src/ui/HelpPage.dart';
import 'package:drivertube/src/ui/HomePage.dart';
import 'package:drivertube/src/ui/NotificationPAge.dart';
import 'package:drivertube/src/ui/ProfilePage.dart';
import 'package:drivertube/src/ui/SearchPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BottomAppBarr extends StatefulWidget {
 
  BottomAppBarr({Key key}) : super(key: key);

  @override
  _BottomAppBarrState createState() => _BottomAppBarrState();
}

class _BottomAppBarrState extends State<BottomAppBarr> {
  List<TabItem> items = <TabItem>[
    TabItem(assetImage: AssetImage("Assets/icons/Home.png"), title: 'Home'),
    TabItem(
        assetImage: AssetImage("Assets/icons/Search.png"), title: 'Discovery'),
    TabItem(
        assetImage: AssetImage("Assets/icons/Notification.png"),
        title: 'Notfication'),
    TabItem(
        assetImage: AssetImage("Assets/icons/Profile.png"), title: 'Profile')
  ];
 int _selectindex=0;

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: ConvexAppBar.builder(
          count: items.length,
          onTap: (int i){
            setState(() {
            _selectindex=i;
            });
          },
          onTapActionButton: (){
            Navigator.of(context).pushNamedAndRemoveUntil( '/camera',(Route<dynamic> route)=>false);
          },
          backgroundColor: Color(MyColors().appcolor),
          tabBuilder: (BuildContext context, int index, bool active) {
            var navigationItem = items[index];
            var _color = active ? Color(MyColors().Green) : Colors.white24;
            var _icon = active
                ? navigationItem.activeIcon ?? navigationItem.assetImage
                : navigationItem.assetImage;
             //   activepage=active?navigationItem.title : activepage;
               
                //var _selected=active? _thispage(navigationItem.title) : null;
            return Container(
              color: Colors.transparent,
              padding: EdgeInsets.only(top: 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ImageIcon(_icon, color: _color),
                  
                  //  Text(navigationItem.title, style: TextStyle(color: _color))
                ],
              ),
            );
          },
          actionBuilder: (BuildContext context, int index, bool active) {
            var _color = active ? Colors.white : Colors.white24;

            return Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                SizedBox(
                  width: 45,
                  height: 45,
                  child: Container(
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: _color),
                    child: Icon(Icons.add,
                        size: 30.0, color: Color(MyColors().Green)),
                  ),
                )
              ],
            );
          },
        ),
        body: _thispage()
    );
  }
  
  
 Widget  _thispage(){
   if(_selectindex==0){
     return HomePage();
   }
   else if(_selectindex==1){
    return SearchPage(); 
   }
   else if(_selectindex==2){
       return NotificationPage();
   }
   else if(_selectindex==3){
     return ProfilePage();
   }
  
  }

  
}
