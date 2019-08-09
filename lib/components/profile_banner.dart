import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nyf_mobile/components/user_icon.dart';

class ProfileBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildProfileBanner();
  }

  Widget _buildProfileBanner() {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 32.0),
              child: UserIcon(width: 150, height: 150)),
          Padding(
              padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: Text("John Doe", style: TextStyle(fontSize: 28.0))),
        ],
      ),
    );
  }
}
