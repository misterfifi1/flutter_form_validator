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
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
              validator: (value) => _textValidation(value),
              autovalidate: true,
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              obscureText: true,
              autovalidate: true,
              keyboardType: TextInputType.emailAddress,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Container(
                alignment: Alignment.center,
                child: RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Scaffold.of(context)
                          .showSnackBar(SnackBar(content: Text('Processing Data')));
                    }
                  },
                  child: Text('Connect'),
                ),
              ),
            ),
          ],
        ),
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