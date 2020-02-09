import 'package:flutter/material.dart';
import 'package:learning_application/common/ColorPalette.dart';
import 'package:learning_application/common/Sizes.dart';
import 'package:learning_application/component/SliderContent.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  bool isMenuTapped = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 150);
  AnimationController _controller;
  Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: ColorPalette.background_page,
      body: Stack(
        children: <Widget>[
          menu(context),
          homepage(context),
        ],
      ),
    );
  }

  Widget menu(context){
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.account_circle,
                  ),
                  SizedBox(width: Sizes.dp14(context)),
                  Text(
                      "Profile",
                      style: TextStyle(
                          color: ColorPalette.white, fontSize: 18.0
                      )
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.account_circle,
                  ),
                  SizedBox(width: Sizes.dp14(context)),
                  Text(
                      "Dashboard",
                      style: TextStyle(
                          color: ColorPalette.white, fontSize: 18.0
                      )
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.account_circle,
                  ),
                  SizedBox(width: Sizes.dp14(context)),
                  Text(
                      "Dashboard",
                      style: TextStyle(
                          color: ColorPalette.white, fontSize: 18.0
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget homepage(context){
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isMenuTapped ? 0 : 0.6 * screenWidth,
      right: isMenuTapped ? 0 : -0.4 * screenWidth,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          elevation: 10,
          color: ColorPalette.background_page,
          child: Container(
            child: Column(
              children: <Widget>[
//                SizedBox(
//                  height: Sizes.dp28(context),
//                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: InkWell(
                            child: Icon(
                                Icons.menu,
                                color: Colors.white
                            ),
                            onTap: () {
                              setState(() {
                                if(isMenuTapped)
                                  _controller.forward();
                                else
                                  _controller.reverse();
                                isMenuTapped = !isMenuTapped;
                              });
                            },
                          ),
                        ),
                        Text(
                            "DeCode",
                            style: TextStyle(
                                fontSize: Sizes.dp22(context), color: Colors.white
                            )
                        ),
                      ],
                    ),
                  ),
                ),


                SliderContent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
