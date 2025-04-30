import 'package:flutter/material.dart';

class Event extends StatefulWidget {
  const Event({super.key});

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  TextEditingController a = TextEditingController();
  String b = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SUPRIYA')),
      backgroundColor: Colors.cyan,
      body: Center(
        child: Form(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 20.0)),
              TextFormField(
                decoration: InputDecoration(hintText: 'Enter Text'),
                controller: a,
                keyboardType: TextInputType.text,
              ),
              Padding(padding: EdgeInsets.only(top: 20.0)),
              TextButton(
                onPressed: () {
                  b = a.text;
                  setState(() {});
                },

                child: Text(
                  'Gettext',
                  style: TextStyle(fontSize: 20.0, color: Colors.blueAccent),
                ),
              ),
              Text("$b"),
            ],
          ),
        ),
      ),
    );
  }
}
