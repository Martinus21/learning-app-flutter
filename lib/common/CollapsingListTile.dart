import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:learning_application/common/Sizes.dart';
import 'package:learning_application/common/Text_Palette.dart';


class CollapsingListTile extends StatefulWidget {
  final String title;
  final IconData icon;

  CollapsingListTile({@required this.title, @required this.icon});

  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(widget.icon, color: Colors.indigo, size: Sizes.dp20(context)),
        SizedBox(width: Sizes.dp20(context)),
        Text(widget.title, style: TextPalette.navigationTitleDefaultStyle),
      ],
    );
  }
}
