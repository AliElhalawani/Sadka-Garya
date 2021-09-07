import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sadaka_garya/Screen/onboarding.dart';
import 'package:sadaka_garya/page/dashboard.dart';
import 'package:sadaka_garya/provider/fontsize.dart';
import 'package:sadaka_garya/provider/settings_provider.dart';
import 'package:sadaka_garya/provider/theme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hexcolor/hexcolor.dart';


class MysplashScreen extends StatefulWidget{

  MysplashState createState()=>MysplashState();
}

class MysplashState extends State<MysplashScreen>{
  AlignmentDirectional alignmentWave = AlignmentDirectional.bottomCenter;
  AlignmentDirectional alignmentWave2 = AlignmentDirectional.topCenter;

  Timer _timer;


  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }
  @override
  void initState() {
    // TODO: implement initState
    // anmation images timer
    void anmi() {
      _timer = new Timer(const Duration(milliseconds: 800), () {
        setState(() {
          alignmentWave = AlignmentDirectional.center;
          alignmentWave2= AlignmentDirectional.center;//AlignmentDirectional(0.0,-0.7);
        });
      });

      // timer to open login screen
      _timer = new Timer(const Duration(seconds: 3), () {
        setState(()  {

          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => Dashboard()));
        });
      });

    }
    anmi();
    super.initState();
  }
  @override

  Widget build(BuildContext context) {

    var h =MediaQuery.of(context).size.height;
    var w =MediaQuery.of(context).size.width;

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    // TODO: implement build
    return Scaffold(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? Colors.grey[900]
            : Theme.of(context).primaryColor,
        body: Stack(

          children: [
            Container(

              height: double.infinity,
              width: double.infinity,
              //color
              // decoration: BoxDecoration(
              //   gradient: LinearGradient(
              //     colors: [
              //       HexColor('#ffa726'),
              //       HexColor('#fb8c00'),
              //     ],
              //   ),
              // ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Container(
                  height: h*.35,
                  width: w*.8,
                  decoration: BoxDecoration(
                    color:Colors.grey[900],
                    borderRadius: BorderRadius.all(
                      Radius.circular(200.0),),

                  ),
                  child: Image.asset('assets/3am eslam.jpeg',width: 50.0,fit: BoxFit.fitHeight,
                  ),

                  // Image.asset('assets/sahbtTamni.jpeg',fit: BoxFit.fitHeight,
                  // ),

                ),

                // Padding(
                //   padding: EdgeInsets.only(left: w*.03,right: w*.03),
                //   child:  Container(
                //       height: h*.3,
                //       width: w,
                //       decoration: BoxDecoration(
                //         color:Colors.grey[900],
                //         borderRadius: BorderRadius.all(
                //           Radius.circular(200.0),),
                //
                //       ),
                //       child:Stack(
                //         // divide image to 4 parts
                //         children: [
                //
                //           Padding(padding: EdgeInsets.only(left: w*.0),
                //             child: Container(
                //             height:h,
                //
                //             child:
                //             AnimatedContainer(
                //               duration: Duration(seconds: 2),
                //               alignment: alignmentWave,
                //               curve: Curves.elasticInOut,
                //               child:
                //               Container(
                //                 height: h*.3,
                //                 width: w,
                //                 decoration: BoxDecoration(
                //                   color:Colors.grey[900],
                //                   borderRadius: BorderRadius.all(
                //                     Radius.circular(200.0),),
                //
                //                 ),
                //                 child: Image.asset('assets/yasser.jpeg',fit: BoxFit.fitHeight,
                //                 ),
                //
                //               ),
                //             ),
                //           ),),
                //
                //           Padding(padding: EdgeInsets.only(right: w*.15),child: Container(
                //             height:h,
                //             width: w*.9,
                //             child:
                //             AnimatedContainer(
                //               duration: Duration(seconds: 1),
                //               alignment: alignmentWave,
                //               padding: EdgeInsets.only(bottom: h*.08),
                //               curve: Curves.easeInOutQuad,
                //               child: Container(
                //                 child: Image.asset('images/im3.png'),
                //               ),
                //             ),
                //           ),),
                //
                //           Padding(padding: EdgeInsets.only(left: w*.1),child: Container(
                //             height:h,
                //             width: w*.6,
                //
                //             child:
                //             AnimatedContainer(
                //               duration: Duration(seconds: 1),
                //               alignment: alignmentWave2,
                //               child: Container(
                //                 child: Image.asset('images/im2.png'),
                //               ),
                //             ),
                //           ),),
                //
                //           Padding(padding: EdgeInsets.only(),child: Container(
                //             height:h,
                //             width: w*.8,
                //
                //             child:
                //             AnimatedContainer(
                //               duration: Duration(seconds: 2),
                //               padding: EdgeInsets.only(top: h*.072),
                //               alignment: alignmentWave,
                //               child: Container(
                //                 child: Image.asset('images/im4.png'),
                //               ),
                //             ),
                //           ),)
                //         ],
                //       )
                //   ),
                // ),
                Container(
                  alignment: Alignment.center,
                  child: Text("صدقه جارية علي ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),

                  ),

                ),
                // Container(
                //   alignment: Alignment.center,
                //   child: Text("المرحوم : سعيد العادلي ",
                //     style: TextStyle(
                //         fontSize: 30,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.white),
                //
                //   ),
                // ),
                Container(
                  alignment: Alignment.center,
                  child: Text("المرحوم : حمدي عبد اللطيف",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),

                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text("محمد احمد",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),

                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text("\n",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),

                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text("اللهم مغفر له ",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),

                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(" واجعل مئواه الجنه",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                ),

              ],
            ),


          ],
        )


    );
  }

}