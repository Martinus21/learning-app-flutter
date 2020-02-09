import 'package:flutter/material.dart';
import 'package:learning_application/common/ColorPalette.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learning_application/common/Sizes.dart';
import 'package:learning_application/common/String_images_assets.dart';
import 'dart:async';

import 'package:learning_application/page/HomePage.dart';
import 'package:learning_application/page/LoginPage.dart';
import 'package:shimmer/shimmer.dart';

class Splash_Page extends StatefulWidget {
  @override
  _Splash_PageState createState() => _Splash_PageState();
}

class _Splash_PageState extends State<Splash_Page> {
  @override
  void initState() {
    super.initState();

    _mochCheckForSession().then(
        (status){
          if (status){
            _navigateToHome();
          }else{
            _navigateToLogin();
          }
        }
    );
  }

  Future<bool> _mochCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 4000), () {});
    return true;
  }

  void _navigateToHome(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => HomePage()
        )
    );
  }

  void _navigateToLogin(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => LoginPage()
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            child: SvgPicture.asset(StringImageAssets.splash_line_vector),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.1, 0.5, 0.9],
                colors: [
                  ColorPalette.splash_page_gradient,
                  Colors.indigo[300],
                  ColorPalette.splash_page_blue
                ],
              )
            ),
          ),
          
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Shimmer.fromColors(
                          child: Text(
                            "DeCode",
                            style: TextStyle(
                              color: ColorPalette.white,
                              fontWeight: FontWeight.bold,
                              fontSize: Sizes.dp31(context),
                              letterSpacing: 10,
                              fontFamily: 'Montserrat',
                              shadows: <Shadow>[
                                Shadow(
                                  blurRadius: 16.0,
                                  color: ColorPalette.splash_page_middle_gradient,
                                  offset: Offset.fromDirection(100,10)
                                )
                              ]
                            ),
                          ),
                          baseColor: Colors.black12,
                          highlightColor: ColorPalette.white
                      )
                    ],
                  ),
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
