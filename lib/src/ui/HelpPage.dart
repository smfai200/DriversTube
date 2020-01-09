import 'package:drivertube/applocalization/appTranslations.dart';
import 'package:drivertube/colors/colors.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  HelpPage({Key key}) : super(key: key);

  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
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
          AppTranslations.of(context).text("Help"),
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
              margin: EdgeInsets.only(top: 20,left: 17,right: 17),
              child:Column(
                children: <Widget>[
                   Container(
                     padding: EdgeInsets.only(left: 10,right: 10),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border:
                          Border.all(color: Color(MyColors().Green), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      
                      ),
                   child: Row(
                        children: <Widget>[
                           Container(
                              margin: EdgeInsets.only(right: 10),
                              child: ImageIcon(
                              AssetImage('Assets/icons/FullName.png'),
                              size: 17,
                              color: Colors.white70
                            ),
                            ),
                            Expanded(
                           //    width: 300,
                           //   margin: EdgeInsets.only(left: 10,right: 10),
                              child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    //  counterStyle: TextStyle(color: Color(0xFF4E586E)),
                      hintText: AppTranslations.of(context).text("FullName"),
                      hintStyle:
                          TextStyle(color: Colors.white70, fontSize: 16.0),
                        
                          
                    ),
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    
                    ),
                  //  maxLength: 40,
                  
                  ),
                            ),
                        ],
                   ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                     padding: EdgeInsets.only(left: 10,right: 10),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border:
                          Border.all(color: Color(MyColors().Green), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      
                      ),
                   child: Row(
                        children: <Widget>[
                           Container(
                              margin: EdgeInsets.only(right: 10),
                              child: ImageIcon(
                              AssetImage('Assets/icons/Email.png'),
                              size: 17,
                              color: Colors.white70
                            ),
                            ),
                            Expanded(
                           //    width: 300,
                           //   margin: EdgeInsets.only(left: 10,right: 10),
                              child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    //  counterStyle: TextStyle(color: Color(0xFF4E586E)),
                      hintText: AppTranslations.of(context).text("Email"),
                      hintStyle:
                          TextStyle(color: Colors.white70, fontSize: 16.0),
                        
                          
                    ),
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    
                    ),
                  //  maxLength: 40,
                  
                  ),
                            ),
                        ],
                   ),
              ),
               Container(
                margin: EdgeInsets.only(top: 10),
                     padding: EdgeInsets.only(left: 10,right: 10),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border:
                          Border.all(color: Color(MyColors().Green), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      
                      ),
                   child: Row(
                        children: <Widget>[
                           Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.phone,
                            //  AssetImage('Assets/icons/FullName.png'),
                              size: 17,
                              color: Colors.white70
                            ),
                            ),
                            Expanded(
                           //    width: 300,
                           //   margin: EdgeInsets.only(left: 10,right: 10),
                              child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    //  counterStyle: TextStyle(color: Color(0xFF4E586E)),
                      hintText: AppTranslations.of(context).text("Phone"),
                      hintStyle:
                          TextStyle(color: Colors.white70, fontSize: 16.0),
                        
                          
                    ),
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    
                    ),
                  //  maxLength: 40,
                  
                  ),
                            ),
                        ],
                   ),
              ),
               Container(
                margin: EdgeInsets.only(top: 10),
                     padding: EdgeInsets.only(left: 10,right: 10),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border:
                          Border.all(color: Color(MyColors().Green), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      
                      ),
                   child: Row(
                        children: <Widget>[
                           Container(
                              margin: EdgeInsets.only(right: 10),
                              child: ImageIcon(
                              AssetImage('Assets/icons/Category.png'),
                              size: 17,
                              color: Colors.white70
                            ),
                            ),
                            Expanded(
                           //    width: 300,
                           //   margin: EdgeInsets.only(left: 10,right: 10),
                              child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    //  counterStyle: TextStyle(color: Color(0xFF4E586E)),
                      hintText: AppTranslations.of(context).text("Subject"),
                      hintStyle:
                          TextStyle(color: Colors.white70, fontSize: 16.0),
                        
                          
                    ),
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    
                    ),
                  //  maxLength: 40,
                  
                  ),
                            ),
                        ],
                   ),
              ),
               Container(
                margin: EdgeInsets.only(top: 10),
                     padding: EdgeInsets.only(left: 10,right: 10),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border:
                          Border.all(color: Color(MyColors().Green), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      
                      ),
                   child: Row(
                        children: <Widget>[
                           Container(
                              margin: EdgeInsets.only(right: 10,bottom: 82),
                              child: ImageIcon(
                              
                              AssetImage('Assets/icons/Message.png'),
                              size: 17,
                              color: Colors.white70
                            ),
                            ),
                            Expanded(
                           //    width: 300,
                           //   margin: EdgeInsets.only(left: 10,right: 10),
                              child: TextField(
                    
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    //  counterStyle: TextStyle(color: Color(0xFF4E586E)),
                      hintText: AppTranslations.of(context).text("Message"),
                      hintStyle:
                          TextStyle(color: Colors.white70, fontSize: 16.0),
                      
                          
                    ),
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    
                    ),
                  //  maxLength: 40,
                      maxLines: 6,
                  ),
                            ),
                        ],
                   ),
              ),
              
                ],
              )
            ),
            Container(
              margin: EdgeInsets.only(bottom: 40,left: 10,right: 10),
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
                      AppTranslations.of(context).text("Send"),
                      style: TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.w600),
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
}