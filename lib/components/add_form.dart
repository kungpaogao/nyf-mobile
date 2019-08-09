import 'package:flutter/material.dart';
import 'package:nyf_mobile/components/select_user.dart';
import 'package:nyf_mobile/components/user_icon.dart';
import 'package:nyf_mobile/data/user.dart';

class AddForm extends StatefulWidget {
  @override
  AddFormState createState() {
    return AddFormState();
  }
}

class AddFormState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Container(
            height: 120,
            child: SelectUser(
              users: sampleUsers,
            ),
          ),
          RaisedButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text("Processing Data")));
              }
            },
            child: Text("Submit"),
          )
        ],
      ),
    );
  }
}
