import 'package:drivertube/applocalization/appTranslations.dart';
import 'package:drivertube/colors/colors.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(MyColors().appcolor),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(MyColors().appcolor),
        title: Text(AppTranslations.of(context).text("Menu"),style: TextStyle(
              color: Color(MyColors().Green),
              fontWeight: FontWeight.w600,
              fontSize: 20),),
         centerTitle: true,

      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
           //   padding: EdgeInsets.all(22),
              margin: EdgeInsets.only(right: 17,left: 17,top: 15),
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
                    InkWell(child: Container(
                        margin: EdgeInsets.only(left: 10, top:10),
                    
                        child: Row(
                          children: <Widget>[
                            ImageIcon(
                              AssetImage('Assets/icons/Notificationfill.png'),
                              size: 19,
                              color: Color(MyColors().Green),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                  AppTranslations.of(context).text("Notification Settings"),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15)),
                            ),
                          ],
                        ),
                      ),
                      onTap: (){
                         Navigator.of(context).pushNamed('/NotificationSettings');
                      },),
                     Container(
                       margin: EdgeInsets.only(left: 10,right: 10,top:5),
                     child: Divider(
                         
                        color: Colors.white,)
                     ),
                    InkWell(
                      child:  Container(
                        margin: EdgeInsets.only(left: 10, top: 5,bottom: 10),
                      
                        //  color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            ImageIcon(
                              AssetImage('Assets/icons/Language.png'),
                              size: 19,
                              color: Color(MyColors().Green),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                  AppTranslations.of(context).text("Language"),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15)),
                            ),
                          ],
                        ),
                      ),
                      onTap: (){
                         Navigator.of(context).pushNamed('/language');
                      },
                    )
                  ],
                  ),

            ),
            Container(
               margin: EdgeInsets.only(right: 17,left: 17,top: 15),
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
                        margin: EdgeInsets.only(left: 10, top: 10),
                    
                        child: Row(
                          children: <Widget>[
                            ImageIcon(
                              AssetImage('Assets/icons/PersonalDataProtection.png'),
                              size: 19,
                              color: Color(MyColors().Blue),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                  AppTranslations.of(context).text("Personal Data Protection"),
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 15)),
                            ),
                          ],
                        ),
                      ),
                     Container(
                       margin: EdgeInsets.only(left: 10,right: 10,top:5),
                     child: Divider(
                         
                        color: Colors.white,)
                     ),
                    InkWell(
                      child:  Container(
                        margin: EdgeInsets.only(left: 10, top: 5),
                      
                        //  color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            ImageIcon(
                              AssetImage('Assets/icons/Terms.png'),
                              size: 19,
                              color: Color(MyColors().Blue),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                  AppTranslations.of(context).text("Terms of Service"),
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 15)),
                            ),
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.of(context).pushNamed('/terms');
                      },
                    ),
                      Container(
                       margin: EdgeInsets.only(left: 10,right: 10,top:5),
                     child: Divider(
                         
                        color: Colors.white,)
                     ),
                     Container(
                        margin: EdgeInsets.only(left: 10, top: 5),
                      
                        //  color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            ImageIcon(
                              AssetImage('Assets/icons/PersonalDataTerms.png'),
                              size: 19,
                              color: Color(MyColors().Blue),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                  AppTranslations.of(context).text("Personal Data Terms"),
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 15)),
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
                        margin: EdgeInsets.only(left: 10, top: 5),
                      
                        //  color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            ImageIcon(
                              AssetImage('Assets/icons/Privacy.png'),
                              size: 19,
                              color: Color(MyColors().Blue),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                  AppTranslations.of(context).text("Privacy Policy"),
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 15)),
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
                        margin: EdgeInsets.only(left: 10, top: 5),
                      
                        //  color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            ImageIcon(
                              AssetImage('Assets/icons/CookiePolicy.png'),
                              size: 19,
                              color: Color(MyColors().Blue),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                  AppTranslations.of(context).text("Cookie Policy"),
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 15)),
                            ),
                          ],
                        ),
                      ),
                       Container(
                       margin: EdgeInsets.only(left: 10,right: 10,top:5),
                     child: Divider(
                         
                        color: Colors.white,)
                     ),
                    InkWell(
                      child:  Container(
                        margin: EdgeInsets.only(left: 10, top: 5,bottom: 10),
                      
                        //  color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            ImageIcon(
                              AssetImage('Assets/icons/Help.png'),
                              size: 19,
                              color: Color(MyColors().Blue),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                  AppTranslations.of(context).text("Help"),
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 15)),
                            ),
                          ],
                        ),
                      ),
                      onTap: (){
                         Navigator.of(context).pushNamed('/help');
                      },
                    )
                    
                      
                  ],
                  ),
            ),
              Padding(
              padding: EdgeInsets.only(right: 10, left: 10,top:80
              ),
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  margin: EdgeInsets.all(8.0),
               //   width: 341,
                  height: 50,
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
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ImageIcon(
                              AssetImage('Assets/icons/SignIn.png'),
                              size: 19,
                              color: Colors.white70,
                            ),
                       Container(
                         margin: EdgeInsets.only(left: 10),
                         child:  Text(
                      AppTranslations.of(context).text("Sign In"),
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                       )

                      ],
                    )
                  ),
                ),
                onTap: () {
                    
                    Navigator.of(context).pushNamed('/signin');

                },
              ),
            )
          ],
        ),
      ),
    );
    
  }
}