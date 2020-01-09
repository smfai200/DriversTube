
import 'package:camera/camera.dart';
import 'package:drivertube/colors/colors.dart';

import 'package:drivertube/src/widgets/ButtonShape.dart';
import 'package:drivertube/src/widgets/DistanceShape.dart';
import 'package:flutter/material.dart';


import '../../date_utils.dart';
enum FlashState { Flash_OFF, Flash_On, Flash_Auto }
class CameraPage extends StatefulWidget {
  double weathervalue;
  CameraPage({this.weathervalue});
double goalCompleted = 0.99; 

  @override
  _CameraPageState createState() => _CameraPageState(weathervalue);
}

class _CameraPageState extends State<CameraPage> with SingleTickerProviderStateMixin{
   double celsius;
 _CameraPageState(this.celsius);
  DateTime selecteddate = DateTime.now();
   String timestamp() => DateTime.now().millisecondsSinceEpoch.toString();
   AnimationController _animationController;
  Animation<double> _progressAnimation;
  double progressdegree = 0;
    FlashState _currentFlashState=FlashState.Flash_OFF;
  Icon _icon=Icon(Icons.flash_off);
 // var _flashvalue=FlashState.Flash_OFF;
 //var flashstate=""
  CameraController controller;
  int selectedCameraIdx;
   List<CameraDescription> cameras;
     void initState() {
    super.initState();
      _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 10));
    _progressAnimation =
        Tween(begin: 0.0, end: 360.0).animate(_animationController)
          ..addListener(() {
            setState(() {
                if(_progressAnimation.value<360){
              progressdegree = widget.goalCompleted * _progressAnimation.value;
                }
                else{
                  Navigator.of(context).pushNamedAndRemoveUntil( '/post',(Route<dynamic> route)=>false);
                }
             
            });
          });
    // celsius=22.0;

    // Get the listonNewCameraSelected of available cameras.
    // Then set the first camera as selected.
    availableCameras().then((availableCameras) {
      cameras = availableCameras;
      
      if (cameras.length > 0) {
        setState(() {
          selectedCameraIdx = 0;
        });

        controller = CameraController(cameras[0], ResolutionPreset.ultraHigh);
        controller.initialize().then((_) {
          if (!mounted) {
            return;
          }
          setState(() {});
        });
      }
    }).catchError((err) {
      print('Error: $err.code\nError Message: $err.message');
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(MyColors().appcolor),
      body: Container(
        child: Column(children: <Widget>[
          Expanded(
              child: Container(
                  child: Center(
                child: _cameraPreviewWidget(),
              )),
            )
        ],),
      ),
    );
  }
  Widget _cameraPreviewWidget(){
     if (controller == null || !controller.value.isInitialized) {
      return const Text(
        'Loading',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.w900,
        ),
      );
    }

    return AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: Container(
        child: Stack(
         children: <Widget>[
            CameraPreview(controller),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                
                height: 17,
                width: 17,
               margin: EdgeInsets.only(top: 40,left:17),
               child: InkWell(
                 child: ImageIcon(AssetImage("Assets/icons/Close.png"),
               color: Colors.white,size: 17,),

               onTap: (){
                  Navigator.of(context).pushNamedAndRemoveUntil( '/bottomapbar',(Route<dynamic> route)=>false);
               },
               )
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 170,
                width: 150,
                margin: EdgeInsets.only(top: 40),
                child: Column(
                   children: <Widget>[
                     Container(
                       height: 100,
                       width: 150,
                       decoration: BoxDecoration(
                              color: Color.fromRGBO(00, 00, 00, 0.3),
                              // border: Border.all( width: 3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                            ),
                            
                     ),
                     Container(
                               //  width: 69,
                            margin: EdgeInsets.only(top: 5),
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(00, 00, 00, 0.3),
                              // border: Border.all( width: 3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                          
                            child: Text(
                              "California Street",
                              style: TextStyle(color: Colors.white,fontSize: 12),
                            ),
                          ),
                   ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 70,
                height: 100,
                margin: EdgeInsets.only(right: 17,top: 40),
                child: Column( 
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                              color: Color.fromRGBO(00, 00, 00, 0.3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Row(
                             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 2),
                                  child: ImageIcon(
                                  AssetImage("Assets/icons/Weather.png"),
                                  color: Colors.white,
                                  size: 12,
                                ),
                                ),
                                Text(celsius.toString() + " \u2103",style: TextStyle(fontSize: 12,color: Colors.white),)
                              ],
                            ),
                    ),
                    CustomPaint(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        height: 56,
                        width: 56,
                        child: Column(
                          children: <Widget>[
                            Text("70",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            Text("km/hr",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                          ],
                        ),
                      ),
                      painter: DistanceShape(4.0),
                    )
                  ],
                ),
              ),
            ),
               Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: 140,
                        //color: Color.fromRGBO(00, 00, 00, 0.3),
                        margin: EdgeInsets.only(bottom: 20,right: 17),
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                         IconButton(
                           icon: _icon,
                           iconSize: 17,
                           color: Colors.white,
                           onPressed: (){
                             _changeIcon(_currentFlashState);
                           },
                         ),

                              Container(margin: EdgeInsets.only(left: 20),child: Text("0:17 / 1:00",style: TextStyle(color: Colors.white),),)
                              
                        ],
                      ),
                      )
                    ),
             Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 120.0,
                margin: EdgeInsets.only(bottom: 20,right: 17),
                child: Stack(
                  children: <Widget>[
                 
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: InkWell(
                        
                        child: CustomPaint(
                          child: Container(
                            width: 50,
                            height: 50,
                            
                          ),
                          painter: ButtonPaint(progressdegree),
                        ),
                      onTap: (){
                         _animationController.forward();
                      },
                       onDoubleTap: () {
                _animationController.stop();
              },
                      )
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(00, 00, 00, 0.3),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Text(
                         formatterDate.format(selecteddate) + " " +
                          formatter.format(selecteddate),
                          style: TextStyle(color: Colors.white,fontSize: 12),
                        ),
                      ),
                    )

         ],
        ),
      ),
             
    ),
         ],
        ),
      ),
    );
  }
  _changeIcon(var flashstate){
    switch (flashstate) {
      case FlashState.Flash_OFF:
      setState(() {
        _icon=Icon(Icons.flash_on);
        _currentFlashState=FlashState.Flash_On;
      });
        
        break;
        case FlashState.Flash_On:
      setState(() {
        _icon=Icon(Icons.flash_auto);
        _currentFlashState=FlashState.Flash_Auto;
      });
        
        break;
        case FlashState.Flash_Auto:
      setState(() {
        _icon=Icon(Icons.flash_off);
        _currentFlashState=FlashState.Flash_OFF;
      });
        
        break;
      
    }
  }
}