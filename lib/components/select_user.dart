import 'package:flutter/material.dart';
import 'package:nyf_mobile/components/icon_stack.dart';
import 'package:nyf_mobile/components/user_icon.dart';
import 'package:nyf_mobile/data/user.dart' as User;
import 'package:nyf_mobile/data/variables.dart' as Variables;

class SelectUser extends StatefulWidget {
  SelectUser({
    Key key,
    this.users,
    this.selected,
    this.padding = Variables.halfMargin,
    this.stack = false,
  }) : super(key: key);

  final List<User.User> users;
  final List<String> selected;
  final double padding;
  final bool stack;

  @override
  _SelectUserState createState() => _SelectUserState();

  static _SelectUserState of(BuildContext context) {
    final _SelectUserState navigator =
        context.ancestorStateOfType(const TypeMatcher<_SelectUserState>());

    assert(() {
      if (navigator == null) {
        throw new FlutterError("Buddy!");
      }
      return true;
    }());

    return navigator;
  }
}

class _SelectUserState extends State<SelectUser> {
  List<String> _selected = [];

  set selected(List<String> val) => setState(() => _selected = val);

  get selected => _selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: Variables.halfMargin),
        scrollDirection: Axis.horizontal,
        itemCount: widget.users.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: widget.padding),
            child: widget.stack
                ? IconStack(
                    user: widget.users[index],
                  )
                : UserIcon(user: widget.users[index]),
          );
        },
      ),
    );
  }
}
