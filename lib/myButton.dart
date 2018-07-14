import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {


  String text = "Hello Flutter";
  final List<String> strings = ['Flutter', 'is', 'cool', 'and','awesome'];
  int counter = 0;

  void onButtonPressed(){
    setState(() {
      text = strings[counter];
      counter = counter <4 ? counter+1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new Drawer(),
      appBar: new AppBar(
        title: new Text("Hello Flutter"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(text, style: TextStyle(fontSize: 50.0),),
            new MaterialButton(
              color: Colors.amber,
                child: new Text("Press Me"),
                onPressed: onButtonPressed),
          ],
        ),
      ),
    );
  }
}
