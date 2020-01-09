import 'package:drivertube/applocalization/appTranslations.dart';
import 'package:drivertube/colors/colors.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         
          body: Container(
            decoration: BoxDecoration(
             
              image: DecorationImage(image: AssetImage('Assets/images/spleshimage.jpg'),fit: BoxFit.cover,)
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                 Container(
               margin: EdgeInsets.only(top: 137,left: 17,right: 17),
            
                
                child: Column(
                  children: <Widget>[
                    
                Image(image:AssetImage("Assets/images/logo.png"),height: 54),
                     

                 
                    Container(
               margin: EdgeInsets.only(top: 58),
            
               child: Center(
                 child: Column(
                   children: <Widget>[
                     Text( AppTranslations.of(context).text("Connect With"),
                      style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.w500),),
                      Padding(
              padding: EdgeInsets.only(top:10,
              ),
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  margin: EdgeInsets.all(8.0),
               //   width: 341,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Color(MyColors().FBlue),
                      border:
                          Border.all(color:Color( MyColors().FBlue), width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      
                      ),
                      
                  child: Center(
                    
                    child: Text(
                      AppTranslations.of(context).text("Facebook"),
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),

                   
                  ),
                ),
                onTap: () {
                    
                   Navigator.of(context).pushNamed('/signup');

                },
              ),
            ),
                 Padding(
              padding: EdgeInsets.only(top:10
              ),
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  margin: EdgeInsets.all(8.0),
               //   width: 341,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Color(MyColors().GoogleOrange),
                      border:
                          Border.all(color:Color( MyColors().GoogleOrange), width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                  child: Center(
                    
                  

                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ImageIcon(
                              AssetImage('Assets/icons/Google.png'),
                              size: 19,
                              color: Colors.white70,
                            ),
                       Container(
                         margin: EdgeInsets.only(left: 10),
                         child:  Text(
                      AppTranslations.of(context).text("Google"),
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                       )

                      ],
                    )
                    
                  ),
                ),
                onTap: () {
                    
              Navigator.of(context).pushNamed('/signup');

                },
              ),
            ),
             Padding(
              padding: EdgeInsets.only(top:10
              ),
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  margin: EdgeInsets.all(8.0),
               //   width: 341,
                  height: 45,
                  decoration: BoxDecoration(
                     gradient: LinearGradient(
                  colors: [const Color(0xFFFF0000), const Color(0xFFAA1FF5)],
                  begin: FractionalOffset.centerLeft,
                  end: FractionalOffset.centerRight,
                  tileMode: TileMode.clamp),
                      border:
                          Border.all( width: 0),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                  child: Center(
                    
                  

                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ImageIcon(
                              AssetImage('Assets/icons/Instagram.png'),
                              size: 19,
                              color: Colors.white70,
                            ),
                       Container(
                         margin: EdgeInsets.only(left: 10),
                         child:  Text(
                      AppTranslations.of(context).text("Instagram"),
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                       )

                      ],
                    )
                    
                  ),
                ),
                onTap: () {
                    
            Navigator.of(context).pushNamed('/signup');

                },
              ),
            )
                   ],
                 ),
               ),
             ),

                  ],
                ),
                
               
              ),
             
             
              Container(
                 margin: EdgeInsets.only(left: 17,right:17,bottom: 50),
                 child: Center(
                   child: 
                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       Row( mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           Text(AppTranslations.of(context).text("String1"),style: TextStyle(fontSize: 11,color: Colors.white)),
                          InkWell(child:  Text(AppTranslations.of(context).text("Terms of Use"),style: TextStyle(fontSize: 12,color: Color(MyColors().Green)),),
                          onTap: (){},)
                         ],
                       ),
                       Row( mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           Text(AppTranslations.of(context).text("String2"),style: TextStyle(fontSize: 11,color: Colors.white)),
                          InkWell(
                            child:  Text(AppTranslations.of(context).text("Privacy Policy"),style: TextStyle(fontSize: 12,color: Color(MyColors().Green)),),
                            onTap: (){},
                          )
                         ],
                       )
                     ],
                   ),
                 )
             
             )
                           
              ],
            ),
          ),
            ),
          
       
    );
  }
}