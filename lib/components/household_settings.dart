import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nyf_mobile/components/dark_mode.dart';
import 'package:nyf_mobile/components/select_user.dart';
import 'package:nyf_mobile/components/user_icon.dart';
import 'package:nyf_mobile/data/user.dart';

class HouseholdSettings extends StatefulWidget {
  HouseholdSettings({Key key}) : super(key: key);

  @override
  _HouseholdSettingsState createState() => _HouseholdSettingsState();
}

class _HouseholdSettingsState extends State<HouseholdSettings> {
  String dropdownValue = 'Weekly';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
                child: Text("The Best Household",
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
              ),
            ),
          ],
        ),
        Container(
          height: 120,
          color: Colors.white,
          child: SelectUser(
            users: sampleUsers,
          ),
        ),
        Divider(
          height: 0,
        ),
        Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(12.0),
                child: Text("Billing Cycle", style: TextStyle(fontSize: 16.0)),
              ),
              Container(
                padding: EdgeInsets.only(right: 10.0),
                child: DropdownButton<String>(
                  value: dropdownValue,
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items: <String>['Immediately', 'Daily', 'Weekly', 'Monthly']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 10,
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Payment Information", style: TextStyle(fontSize: 16.0)),
              Row(
                children: <Widget>[
                  Icon(Icons.credit_card),
                  Container(
                    width: 10,
                  ),
                  Text("x3759", style: TextStyle(fontSize: 16.0)),
                  Container(
                    width: 10,
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              )
            ],
          ),
        ),
        Divider(
          height: 0.0,
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Change Email & Password", style: TextStyle(fontSize: 16.0)),
              Row(
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios),
                ],
              )
            ],
          ),
        ),
        Divider(
          height: 0,
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Feedback & Support", style: TextStyle(fontSize: 16.0)),
              Row(
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios),
                ],
              )
            ],
          ),
        ),
        Divider(
          height: 0,
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 12.0, right: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Dark Mode", style: TextStyle(fontSize: 16.0)),
              Row(
                children: <Widget>[
                  DarkMode(),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
