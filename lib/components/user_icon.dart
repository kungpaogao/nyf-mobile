import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class UserIcon extends StatelessWidget {
  double width;
  double height;

  UserIcon({this.width, this.height});

  Widget build(BuildContext context) {
    return _buildUserIcon();
  }

  Widget _buildUserIcon() {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      ),
    );
  }
}
