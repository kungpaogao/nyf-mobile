import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nyf_mobile/data/user.dart';

class UserIcon extends StatelessWidget {
  final double width;
  final double height;
  final User user;

  UserIcon({
    this.width = 55.0,
    this.height = 90,
    this.user,
  });

  Widget build(BuildContext context) {
    return _buildUserIcon();
  }

  Widget _buildUserIcon() {
    return Column(
      children: <Widget>[
        Container(
          width: width,
          height: width,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey,
          ),
          child: Center(
            child: Text(user.firstName[0]),
          ),
        ),
        Container(
          width: width,
          margin: EdgeInsets.only(top: 5.0),
          // padding: EdgeInsets.symmetric(),
          child: Text(
            user.firstName + " " + user.lastName,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
