import 'package:flutter/material.dart';
import 'package:nyf_mobile/components/user_icon.dart';
import 'package:nyf_mobile/data/user.dart' as User;

class SelectUser extends StatefulWidget {
  SelectUser({
    Key key,
    this.users,
    this.selected,
    this.selectable = true,
    this.padding = 10,
  }) : super(key: key);

  final List<User.User> users;
  final List<int> selected;
  final bool selectable;
  final double padding;

  @override
  _SelectUserState createState() => _SelectUserState();
}

class _SelectUserState extends State<SelectUser> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        scrollDirection: Axis.horizontal,
        itemCount: widget.users.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: widget.padding),
            child: UserIcon(
              user: widget.users[index],
            ),
          );
        },
      ),
    );
  }
}
