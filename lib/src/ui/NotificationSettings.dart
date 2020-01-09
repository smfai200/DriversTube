import 'package:drivertube/applocalization/appTranslations.dart';
import 'package:drivertube/colors/colors.dart';
import 'package:drivertube/src/widgets/Circledraw.dart';
import 'package:flutter/material.dart';

class NotificationSettingsPage extends StatefulWidget {
  NotificationSettingsPage({Key key}) : super(key: key);

  @override
  _NotificationSettingsPageState createState() => _NotificationSettingsPageState();
}

class _NotificationSettingsPageState extends State<NotificationSettingsPage> {
  bool _switch1=false;
  bool _switch2=false;
  int colorvalue=0xFF242A37;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(MyColors().appcolor),
      appBar: AppBar(
       
        backgroundColor: Color(MyColors().appcolor),
        title: Text(AppTranslations.of(context).text("Notification Settings"),style: TextStyle(
              color: Color(MyColors().Green),
              fontWeight: FontWeight.w600,
              fontSize: 20),),
         centerTitle: true,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
               margin: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  Container(
                    //  margin: EdgeInsets.only(left: 97,right: 97),
                     height: 182,
                     width: 182,
                       child: CustomPaint(
                         child: Container(
                           
                           margin: EdgeInsets.all(30),
                          child: Center(
                            child: Image(image: AssetImage("Assets/icons/NotificationDec.png"),height: 79,
                           width: 64,)

                         ),
                          ),
                        painter: CircleDraw(), 
                       ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:20),
                    child: Text(AppTranslations.of(context).text("Turn on"),style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 30))
                  ),
                   Container(
                    margin: EdgeInsets.only(top:5),
                    child: Text(AppTranslations.of(context).text("Notifications"),style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 30))
                  )
                ],
              ),
            ),
             Container(
           //   padding: EdgeInsets.all(22),
              margin: EdgeInsets.only(right: 17,left: 17,top: 20),
              decoration: BoxDecoration(
                  color: Color(MyColors().appcolor),
                  border: Border.all(color: Color(0xFF242A37), width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black,
                     
                      blurRadius: 05.0,
                    )
                  ]),
                  child: Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 10, top:10,right: 10),
                    
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                  AppTranslations.of(context).text("Near arround new video"),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16)),
                            ),
                             InkWell(
                            child:   _switchOne(),
                            onTap: (){
                              setState(() {
                                if(_switch1){
                                  _switch1=false;
                                }
                                else{
                                  _switch1=true;
                                }
                              });
                            },
                          ),
                          ],
                        ),
                      ),
                     Container(
                       margin: EdgeInsets.only(left: 10,right: 10,top:5),
                     child: Divider(
                         
                        color: Colors.white,)
                     ),
                     Container(
                        margin: EdgeInsets.only(left: 10, top: 5,bottom: 10,right: 10),
                      
                        //  color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                  AppTranslations.of(context).text("Likes on my post"),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16)),
                            ),
                          InkWell(
                            child:   _switchTwo(),
                            onTap: (){
                              setState(() {
                                if(_switch2){
                                  _switch2=false;
                                }
                                else{
                                  _switch2=true;
                                }
                              });
                            },
                          ),
                          
                        /*  
                            Container(
                      width: 32.0,
                      height: 16.0,
                      decoration: BoxDecoration(
                        color: Color(colorvalue),
                        border: Border.all(color: Color(0xFF1ED761), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Switch(
                        value: _isSwitched,
                        onChanged: (value) {
                          setState(() {
                            _isSwitched = value;
                            if(_isSwitched){
                               colorvalue=0xFF242A37;
                            }
                            else{
                              colorvalue=MyColors().Green;
                            }
                          });
                        },
                        activeTrackColor: Color(MyColors().Green),
                        activeColor: Colors.white,
                        inactiveTrackColor: Color(0xFF242A37),
                        inactiveThumbColor: Color(MyColors().Green),
                       
                        
                      ),
                    ), 
*/
                    
                          ],
                        ),
                      ),
                  ],
                  ),

            ),
          ],
        ),
      ),
    );
  }
  _switchOne(){
   if(_switch1){
     return Image(image:AssetImage("Assets/icons/OnSwitch.png"),width: 32,height: 16,);
   }
   else{
     return Image(image:AssetImage("Assets/icons/OffSwitch.png"),width: 32,height: 16,);
   }
  }
  _switchTwo(){
   if(_switch2){
     return Image(image:AssetImage("Assets/icons/OnSwitch.png"),width: 32,height: 16,);
   }
   else{
     return Image(image:AssetImage("Assets/icons/OffSwitch.png"),width: 32,height: 16,);
   }
  }
}