import 'package:drivertube/colors/colors.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _controller = new TextEditingController();
  bool checkvalue=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(MyColors().appcolor),
      body: Column(
        children: <Widget>[
          Container( 
            height: 120,
           // color: Color(MyColors.appColor),
            
                  child: Stack(
                    children: <Widget>[
                      Container(
                    
                         decoration: BoxDecoration(
                    color: Color(MyColors().appcolor),
                   // border: Border.all(color: Color(0xFF242A37), width: 3),
                  //  borderRadius: BorderRadius.all(Radius.circular(6)),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black,
                        // offset: new Offset(0.0, 0.0),
                        blurRadius: 05.0,
                      )
                    ]),
                  
                      ),
                   Align(
                     alignment: Alignment.bottomCenter,
                     child: Container( 
                       padding: EdgeInsets.only(left: 10,right: 10),
                        decoration: BoxDecoration(
                   color: Colors.white,
                  //  border: Border.all(color: Color(0xFF242A37), width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                    
                       margin: EdgeInsets.only(bottom: 20,left: 17,right: 17),
                       height:42,
                       child: Center(
                         child: Row(
                         children: <Widget>[
                           Container(
                             margin: EdgeInsets.only(right: 10),
                             child: Image(image:AssetImage("Assets/icons/Searchdull.png"),height: 22,width:22,),
                           ),
                           Expanded(
                           child: Container(
                        margin: EdgeInsets.only(bottom: 3),
                             child: TextField(
                               controller: _controller,
                             cursorColor: Colors.white70,
                             decoration: InputDecoration(
                               border: InputBorder.none,
                            
                             ),
                             style: TextStyle(
                               fontSize: 16
                             ),
                             onChanged: (value){
                               if(value.length!=0){
                                 setState(() {
                                   checkvalue=true;
                                 });
                               }
                               else{
                                 checkvalue=false;
                               }
                             },
                           ),
                           )
                           ),
                           _showCross()
                         ],
                       )),
                       
                     ),
                   )

                    ],
                  ),   
          )
        ],
      ),
    );
  }
  _showCross(){
 if(checkvalue){
   return Container(
     margin: EdgeInsets.only(left: 10),
     child: InkWell(
       child: Image(image:AssetImage("Assets/icons/Cancel.png"),height: 10,width: 10,),
       onTap: (){
         _controller.clear();
       },
     )
   );
 }
 else{
   return Container(
     margin: EdgeInsets.only(left: 10),
   );
 }
  }
}