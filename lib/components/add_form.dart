import 'package:flutter/material.dart';
import 'package:nyf_mobile/components/select_user.dart';
import 'package:nyf_mobile/components/user_icon.dart';
import 'package:nyf_mobile/data/household.dart';
import 'package:nyf_mobile/data/user.dart';
import 'package:nyf_mobile/data/variables.dart' as Variables;

class AddForm extends StatefulWidget {
  @override
  AddFormState createState() {
    return AddFormState();
  }
}

class AddFormState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();
  bool isRecurring = false;
  Cycle billingCycle = Cycle.weekly;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(
              vertical: Variables.margin,
              horizontal: Variables.margin,
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.attach_money,
                  size: 30.0,
                ),
                hintText: "Total Amount \$",
                labelText: "Amount",
              ),
              validator: (value) {
                isNumeric(string) => num.tryParse(string) != null;
                if (!isNumeric(value)) {
                  return 'Please enter a valid number';
                }
                return null;
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: Variables.halfMargin,
              horizontal: Variables.margin,
            ),
            alignment: Alignment.centerLeft,
            child: Text("Household Members"),
          ),
          Container(
            height: 120,
            child: SelectUser(
              users: sampleUsers,
            ),
          ),
          Row(
            children: <Widget>[
              Checkbox(
                value: isRecurring,
                onChanged: (bool newVal) {
                  setState(() {
                    isRecurring = newVal;
                  });
                },
              ),
              Text(
                "Recurring fee?",
                style: Variables.defaultText,
              )
            ],
          ),
          isRecurring
              ? Container(
                  padding: EdgeInsets.all(Variables.margin),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Billing cycle?",
                        style: Variables.defaultText,
                      ),
                      Spacer(),
                      Container(
                        child: DropdownButton<Cycle>(
                          value: billingCycle,
                          onChanged: (Cycle newValue) {
                            setState(() {
                              billingCycle = newValue;
                            });
                          },
                          items: Cycle.values.map((Cycle cycle) {
                            String cleanText =
                                cycle.toString().replaceAll("Cycle.", "");
                            return DropdownMenuItem<Cycle>(
                              child: Text(cleanText[0].toUpperCase() +
                                  cleanText.substring(1)),
                              value: cycle,
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  ),
                )
              : Container(),
          Container(
            padding: EdgeInsets.all(Variables.margin),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton.icon(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Scaffold.of(context).showSnackBar(
                            SnackBar(content: Text("Processing Data")));
                      }
                    },
                    color: Colors.blueGrey,
                    icon: Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                    label: Text(
                      "SUBMIT",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
