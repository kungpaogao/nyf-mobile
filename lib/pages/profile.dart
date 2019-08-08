import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildProfile();
  }

  Widget _buildProfile() {
    return Center(
      child: Text("This is the profile page."),
    );
  }
}
