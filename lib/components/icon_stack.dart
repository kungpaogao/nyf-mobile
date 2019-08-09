import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nyf_mobile/data/user.dart';
import 'package:nyf_mobile/components/user_icon.dart';
import 'package:nyf_mobile/data/variables.dart' as Variables;

class IconStack extends StatefulWidget {
  final double width;
  final double height;
  final User user;

  IconStack(
      {Key key,
      this.width = Variables.userIconWidth,
      this.height = Variables.userIconHeight,
      this.user})
      : super(key: key);

  @override
  _IconStackState createState() => _IconStackState();
}

class _IconStackState extends State<IconStack> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        UserIcon(user: widget.user),
        Opacity(
          opacity: _visible ? 1.0 : 0.0,
          child: Container(
            width: widget.width,
            height: widget.width,
            child: FloatingActionButton(
              child: Icon(Icons.check),
              backgroundColor: Colors.blueGrey,
              foregroundColor: Colors.white,
              elevation: 0,
              onPressed: () {
                setState(() {
                  _visible = !_visible;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
