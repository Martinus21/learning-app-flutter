import 'package:flutter/material.dart';
import 'package:learning_application/page/HomePage.dart';

import 'common/ColorPalette.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learning App',
      theme: ThemeData(
        backgroundColor: ColorPalette.background_page,
      ),
      home: HomePage(),
    );
  }
}
