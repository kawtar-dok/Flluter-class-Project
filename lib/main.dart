import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _state createState() => new _state();
}

class _state extends State<MyApp> {
  String _value = "Hello Kali";
  String _val = '';
  int _inc = 0;
  bool isChecked = false;
  bool isChecked2 = false;

  void _onPressed() {
    setState(() {
      _value = 'hey you!!';
    });
  }

  void _add() {
    setState(() {
      _inc++;
    });
  }

  void _substract() {
    setState(() {
      _inc--;
    });
  }

  void _onChange(String val) {
    setState(() => _val = 'Change: ${val}');
  }

  void _onSubmit(String val) {
    setState(() => _val = 'Submit: ${val}');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('IK Material app'),
          backgroundColor: Color.fromARGB(255, 48, 216, 205),
        ),
        body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text(_value),
              new TextField(
                decoration: new InputDecoration(
                    labelText: 'FirstName',
                    hintText: 'Enter your firstname',
                    icon: new Icon(Icons.people)),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                onChanged: _onChange,
                onSubmitted: _onSubmit,
              ),
              new TextField(
                decoration: new InputDecoration(
                    labelText: 'LastName ',
                    hintText: 'Enter your lastname',
                    icon: new Icon(Icons.people)),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                onChanged: _onChange,
                onSubmitted: _onSubmit,
              ),
              new TextField(
                decoration: new InputDecoration(
                    labelText: 'Email ',
                    hintText: 'Enter your email',
                    icon: new Icon(Icons.people)),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                onChanged: _onChange,
                onSubmitted: _onSubmit,
              ),
              new CheckboxListTile(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(
                      () {
                        isChecked = value!;
                      },
                      title: new Text('Student'),
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor: HexColor("#5344ed"),
                    );
                  }),
              new CheckboxListTile(
                  value: isChecked2,
                  onChanged: (bool? value) {
                    setState(
                      () {
                        isChecked2 = value!;
                      },
                      title: new Text('Prof'),
                      controlAffinity: ListTileControlAffinity.leading,
                    );
                  }),
            ],
          ),
        ));
  }
}
