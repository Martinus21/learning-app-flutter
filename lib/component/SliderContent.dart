import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learning_application/common/Sizes.dart';
import 'package:learning_application/common/String_images_assets.dart';

class SliderContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200.0,
        width: Sizes.widthOfSlider(context),
        child: PageView(
          children: <Widget>[
            Carousel(
              images: [
                SvgPicture.asset(StringImageAssets.scroll_svg_vector),
                SvgPicture.asset(StringImageAssets.scroll_svg_vector),
                SvgPicture.asset(StringImageAssets.scroll_svg_vector),
              ],
              indicatorBgPadding: 5.0,
              dotBgColor: Colors.transparent,
              borderRadius: true,
              moveIndicatorFromBottom: 180.0,
              noRadiusForIndicator: true,
              overlayShadow: true,
              overlayShadowColors: Colors.white,
              overlayShadowSize: 0.7,
              dotSize: 4.0,
              dotSpacing: 15.0,
              dotColor: Colors.white,
              dotIncreasedColor: Colors.blueAccent,
            ),
          ],
        )
    );
  }
}
