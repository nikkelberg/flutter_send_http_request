import 'package:flutter/material.dart';

import 'globals.dart' as globals;

class MyForm extends StatefulWidget {
  @override
  MyFormState createState() {
    return MyFormState();
  }
}

class MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'idTrasporto'),
            initialValue: globals.inputFTrasporto,
            validator: (value) {
              if (value.isEmpty) {
                return 'Inserire numero trasporto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'idAutista'),
            initialValue: globals.inputFAutista,
            validator: (value) {
              if (value.isEmpty) {
                return 'Inserire numero autista';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Targa'),
            initialValue: globals.inputFTarga,
            validator: (value) {
              if (value.isEmpty) {
                return 'Inserire Targa Automezzo';
              }
              return null;
            },
          ),
          RaisedButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text('Processing Data')));
              }
            },
            child: Text("Registra"),
          ),
        ],
      ),
    );
  }
}
