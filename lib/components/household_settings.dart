import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nyf_mobile/components/user_icon.dart';

class HouseholdSettings extends StatefulWidget {
  HouseholdSettings({Key key}) : super(key: key);

  @override
  _HouseholdSettingsState createState() => _HouseholdSettingsState();
}

class _HouseholdSettingsState extends State<HouseholdSettings> {
  List<String> household_names = <String>[
    "Andrew",
    "Shubham",
    "Hannah",
    "Dan",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              // padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                child: Text("The Best Household"),
              ),
            ),
          ],
        ),
        Container(
          height: 75,
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                child: UserIcon(width: 55, height: 55),
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: UserIcon(width: 55, height: 55),
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: UserIcon(width: 55, height: 55),
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: UserIcon(width: 55, height: 55),
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: UserIcon(width: 55, height: 55),
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: UserIcon(width: 55, height: 55),
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: UserIcon(width: 55, height: 55),
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: UserIcon(width: 55, height: 55),
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: UserIcon(width: 55, height: 55),
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: FloatingActionButton(
                  child: new Icon(Icons.add),
                  backgroundColor: Colors.blueGrey,
                  elevation: 0.0,
                  onPressed: () {
                    print("filled background");
                  },
                ),
                padding: EdgeInsets.all(10.0),
              ),
            ],
          ),
        ),
        Container(
          height: 50,
          color: Colors.white,
          child: Center(child: Text('Entry C')),
        ),
      ],
    );

    // return Container(
    //   child: ListView.builder(
    //     itemCount: entries.length,
    //     itemBuilder: (BuildContext context, int index) {
    //       return Container(
    //         padding: EdgeInsets.all(16.0),
    //         margin: EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
    //         height: 50,
    //         color: Colors.white,
    //         child: Text('${entries[index]}', style: TextStyle(fontSize: 16.0)),
    //       );
    //     },
    //   ),
    // );
  }
}
