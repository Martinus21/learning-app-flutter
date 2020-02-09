import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:learning_application/Model/NavigationModel.dart';
import 'package:learning_application/common/ColorPalette.dart';
import 'package:learning_application/common/Sizes.dart';

import 'CollapsingListTile.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      color: ColorPalette.white,
      child: Column(
        children: <Widget>[
          Container(
            child: SizedBox(
              height: Sizes.dp32(context),
              child: Text("RICHARD"),
            ),
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, counter){
              return CollapsingListTile(
                title: navigationItem[counter].title,
                icon: navigationItem[counter].icon,
              );
            },
            itemCount: navigationItem.length,
            ),
          ),
        ],
      ),
    );
  }
}
