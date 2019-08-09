import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nyf_mobile/components/user_icon.dart';
import 'package:nyf_mobile/data/user.dart';

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
              child: UserIcon(width: 125, height: 150, user: sampleUsers[0])),
        ],
      ),
    );
  }
}
