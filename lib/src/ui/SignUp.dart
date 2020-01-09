import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:drivertube/applocalization/appTranslations.dart';
import 'package:drivertube/colors/colors.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {

  SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  
  bool _checkvalue=false;
  String tempvalue;
  String gendervalue="Choose Gender";
  int valuee=0;
  
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
          AppTranslations.of(context).text("SignUp"),
          style: TextStyle(
              color: Color(MyColors().Green),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        elevation: 10,
      ),
      body: Center(
        child: Column(
       //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
           Container(
              margin: EdgeInsets.only(top:20 ),
             child: Column(
               children: <Widget>[
                  Container(
          
         decoration: BoxDecoration(
           shape: BoxShape.circle,
           color: Color(MyColors().appcolor),
          boxShadow: [
                    new BoxShadow(
                      color: Colors.black,
                   
                      blurRadius: 05.0,
                    ),
          ]
        ),
       
      child: Container(
        height: 100,
      
        
      )
    ),
   Container(
     margin: EdgeInsets.only(top: 10),
     child:  InkWell(
          child:
              Text(AppTranslations.of(context).text("Upload Photo"), style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: Color(MyColors().Green))),
          onTap: () {
           _showProfileDialog();
          },
        ),
   )
               ],
             ),
           ),

           Container(
             margin: EdgeInsets.only(top: 20,right: 17,left: 17),
            
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
                        margin: EdgeInsets.only(left: 10,right: 10),
                       //  height: 32,
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: ImageIcon(
                              AssetImage('Assets/icons/FullName.png'),
                              size: 18,
                              color: Color(MyColors().Blue),
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
                          TextStyle(color: Colors.white70, fontSize: 15.0),
                        
                          
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
                       margin: EdgeInsets.only(left: 10,right: 10),
                     child: Divider(
                         
                        color: Colors.white,)
                     ),
                     Container(
                        margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                    
                        child: Row(
                          children: <Widget>[
                            Container(
                             margin: EdgeInsets.only(right: 20,bottom: 10),
                             child: ImageIcon(
                              AssetImage('Assets/icons/UserName.png'),
                              size: 18,
                              color: Color(MyColors().Blue),
                            ),
                            ),
                           Expanded(
                              
                              child: TextField(
                                onChanged: (text){
                                  setState(() {
                                                                     valuee=text.length;
                                  });

                               
                                },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                   contentPadding: EdgeInsets.all(-10),
                  
                      isDense: true,
                      counterStyle: TextStyle(color: Color(0xFF4E586E),fontSize: 10),
                      hintText: AppTranslations.of(context).text("UserName"),
                      hintStyle:
                          TextStyle(color: Colors.white70, fontSize: 15.0),
                          
                   counter: Offstage()
                          
                    ),
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    
                    ),
                    maxLength: 12,
                    minLines: 1,
                    maxLines: 1,
                  
                  ),
                            ),
                           Container(
                              margin: EdgeInsets.only(top: 2),
                             child:  Column(
                               mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(bottom: 2),
                                  height: 12,
                                  width: 50,
                                 
                                  child: _available(),
                                ),
                                Text(valuee.toString()+"/12",style:  TextStyle(color: Colors.white70, fontSize: 12.0),),
                              ],
                            ),
                           )
                          ],
                        ),
                      ),
                     Container(
                       margin: EdgeInsets.only(left: 10,right: 10),
                     child: Divider(
                         
                        color: Colors.white,)
                     ),
                     Container(
                        margin: EdgeInsets.only(left: 10),
                    
                        child: Row(
                          children: <Widget>[
                           Container(
                             margin: EdgeInsets.only(right:10),
                             child:  ImageIcon(
                              AssetImage('Assets/icons/Email.png'),
                              size: 18,
                              color: Color(MyColors().Blue),
                            ),
                           ),
                           Expanded(
                            
                              child: TextField(
                            
                            
                    
                    decoration: InputDecoration(
                    
                      border: InputBorder.none,
                    //  counterStyle: TextStyle(color: Color(0xFF4E586E)),
                      hintText: AppTranslations.of(context).text("Email"),
                      hintStyle:
                          TextStyle(color: Colors.white70, fontSize: 15.0),
                        
                          
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
                       margin: EdgeInsets.only(left: 10,right: 10),
                     child: Divider(
                         
                        color: Colors.white,)
                     ),
                     Container(
                        margin: EdgeInsets.only(left: 10),
                    
                        child: Row(
                          children: <Widget>[
                            ImageIcon(
                              AssetImage('Assets/icons/Gender.png'),
                              size: 18,
                              color: Color(MyColors().Blue),
                            ),
                          Expanded(child:  Container(
        margin: EdgeInsets.only(right: 10,left: 10,top: 15,bottom: 17),
        child: InkWell(
          child:
            Text(AppTranslations.of(context).text(gendervalue), style: TextStyle(fontSize: 15, color: Colors.white70)),
          onTap: () {
           _showgenderDiloge();
          },
        ),
      ),)
                          ],
                        ),
                      ),
                     
                 ],
               ),

           ),
           Container(
             margin: EdgeInsets.only(top: 20,right: 17,left: 17),
             child: Row(
               children: <Widget>[
                InkWell(
        onTap: () {
          setState(() {
            _checkvalue = !_checkvalue;
          });
        },
        child: Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(shape: BoxShape.rectangle,
          border: Border.all(color: Color(MyColors().Green), width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(2)),),
         
            child: _checkvalue
                ? Icon(
                    Icons.check,
                    size: 10.0,
                    color: Colors.white,
                  )
                : null
          ),
        ),
        Container(
          margin: EdgeInsets.only(left:5,bottom: 5),
          child: 
              Row(
                children: <Widget>[
                   Text(AppTranslations.of(context).text("String1"),style: TextStyle(fontSize: 10,color: Colors.white)),
                     InkWell(child:  Text(AppTranslations.of(context).text("Terms of Service"),style: TextStyle(fontSize: 10,color: Color(MyColors().Green),decoration: TextDecoration.underline),),
                          onTap: (){},)
                ],
              ),
               
        ),
        
               
               ],
             ),
           ),
           Container(
          margin: EdgeInsets.only(left:37),
          child: 
              Row(
                children: <Widget>[
                   Text(AppTranslations.of(context).text("String2"),style: TextStyle(fontSize: 10,color: Colors.white)),
                     InkWell(child:  Text(AppTranslations.of(context).text("Privacy Policy"),style: TextStyle(fontSize: 10,color: Color(MyColors().Green),decoration: TextDecoration.underline),),
                          onTap: (){},)
                ],
              ),
               
        ),
         
         Container(
           margin: EdgeInsets.only(top: 20,right: 9,left: 9),
             
             
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
                      AppTranslations.of(context).text("Confirm").toUpperCase(),
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('/done');
                },
              ),
         )

          ],
        ),
      )
    );
   
}
_available(){
     if(valuee!=0){
       return Text("available",style: TextStyle(fontSize: 10,color: Color(MyColors().Green)),);

     }
     else{
      return null;
     }
   }
  
  _showProfileDialog(){
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 02, sigmaY: 02),
            child: Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(05.0)),
              backgroundColor: Color(MyColors().appcolor),
              child: Container(
                height: 265,
                child: Center(
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    Container(
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                        children: <Widget>[
                         Expanded(
                           child: Container(
                             margin: EdgeInsets.only(right: 8),
                  
                  
         decoration: BoxDecoration(
           color: Color(MyColors().appcolor),
          border: Border.all(color: Color(0xFF242A37), width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
          boxShadow: [
                    new BoxShadow(
                      color: Colors.black,
                   
                      blurRadius: 05.0,
                    ),
          ]
        ),
       
      child: Container(
        margin: EdgeInsets.all(20),
        child: Center(
          child: Column(
          
           children: <Widget>[
             Container(
               margin: EdgeInsets.only(bottom: 20),
               child: Image(image: AssetImage('Assets/icons/Camera.png'),height: 34.74,width: 43.43,),
             ),
              Text(AppTranslations.of(context).text("Take Photo"), style: TextStyle(fontSize: 15,color: Colors.white),)
           ],
          ),
        ),
      
        
      )
    ),
                         ),
    Expanded(
      child:  Container(
         margin: EdgeInsets.only(left: 8),
                  
                 
         decoration: BoxDecoration(
           color: Color(MyColors().appcolor),
          border: Border.all(color: Color(0xFF242A37), width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
          boxShadow: [
                    new BoxShadow(
                      color: Colors.black,
                   
                      blurRadius: 05.0,
                    ),
          ]
        ),
       
      child: Container(
        margin: EdgeInsets.all(20),
        child: Center(
          child: Column(
          
           children: <Widget>[
             Container(
               margin: EdgeInsets.only(bottom: 20),
               child: Image(image: AssetImage('Assets/icons/Photos.png'),height: 34.74,width: 43.43,),
             ),
              Text( AppTranslations.of(context).text("From Photos"), style: TextStyle(fontSize: 15,color: Colors.white),)
           ],
          ),
        ),
      
        
      )
    ),
    )
                        ],
                      ),
                    ),
                   InkWell(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  margin: EdgeInsets.all(8.0),
               //   width: 341,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(MyColors.appColor),
                      border:
                          Border.all(color: Color(MyColors().Green), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black,
                          blurRadius: 05.0,
                        )
                      ]),
                  child: Center(
                    child: Text(
                      AppTranslations.of(context).text("Cancel"),
                      style: TextStyle(fontSize: 16, color: Color(MyColors().Green,),fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                  Navigator.pop(context);
                  });
                },
              ),
                  ],),
                  )
                ),
               
              ),
            ),
          );
        });
  }
    _showgenderDiloge() {
    setState(() {
      tempvalue = "Male";
    });
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 02, sigmaY: 02),
            child: Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(05.0)),
              backgroundColor: Color(MyColors().appcolor),
              child: Container(
                height: 211,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 19),
                        child: Text(AppTranslations.of(context).text("Choose Gender"),
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Container(
                           
                             // width: 300,
                              height: 95,
                              child: _carouselgenderWidget())),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: InkWell(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            width: 112,
                            // height: 29,

                            decoration: BoxDecoration(
                                color: Color(MyColors().Green),
                                border: Border.all(
                                    color: Color(MyColors().Green), width: 3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.black,
                                    // offset: new Offset(0.0, 0.0),
                                    blurRadius: 05.0,
                                  )
                                ]),

                            child: Center(
                              child: Text(
                                AppTranslations.of(context).text("Ok"),
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              gendervalue = tempvalue;
                              Navigator.pop(context);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
    _carouselgenderWidget() {
    return CarouselSlider(
        height: 95,
        autoPlay: false,
        enlargeCenterPage: true,
        viewportFraction: 0.3,
        aspectRatio: 3.0,
        scrollDirection: Axis.vertical,
        onPageChanged: (index) {
          setState(() {
            tempvalue = _genderlist[index];
          });
        },
        items: map<Widget>(
          _genderlist,
          (index, i) {
            return Container(
                 
                margin: EdgeInsets.all(5.0),
                child: Center(
                    child: ClipRect(
                  child: Text(
                      AppTranslations.of(context).text(_genderlist[index]),
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                )));
          },
        ).toList());
  }
List<String> _genderlist = [
    "Male",
    "Female",
    "Rather not Say",
  ];
   List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }
  

}