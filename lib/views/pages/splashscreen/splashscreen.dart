
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:localeasy/views/components/common/common.dart';
import 'package:localeasy/views/pages/admin/login.dart';
import 'package:localeasy/views/styles/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fnGetPageData();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: boxImageDecoration("assets/images/bg.jpg", 0),
        child: Container(
          decoration: boxGradientDecoration(20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              gapHC(0),
              Flexible(
                flex: 6,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: boxImageDecoration("assets/images/logow.jpg", 30),
                  ),
                ],
              ),),
              const Flexible(
                flex: 4,
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   SpinKitThreeBounce(color: Colors.white,size: 50,),

                ],
              )),
              tcn('Powered By', Colors.white, 8),
              tc('LOCAL EASY', Colors.white, 10),
              gapHC(20),
              
            ],
          ),
        ),
      )
    );
  }

  //=====================================WIDGET

  //=====================================PAGE FN
  fnGetPageData(){
    var duration = const Duration(seconds: 7);
    return Timer(duration, route);
  }
  route() async{
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const LoginPage()
    ));
  }
//=====================================API CALL
}
