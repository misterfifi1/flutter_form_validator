import 'package:flutter/material.dart';

class DemoForm extends StatefulWidget {
  @override
  DemoFormState createState() {
    return DemoFormState();
  }
}

class DemoFormState extends State<DemoForm> {
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            validator: (value) => _textValidation(value)
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }

  String  _textValidation(String value) {
    if (value.isEmpty) {
      return 'Please enter some text';
    } else {
      switch (value){
        case "42":
          return 'Good answer, but what is the question?';
          break;
        default:
          return null;
          break;
      }
    }
  }
}