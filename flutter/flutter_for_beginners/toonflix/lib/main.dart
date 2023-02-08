import 'package:flutter/material.dart';

class Player {
  String? name;
  Player({this.name});
}

void main() {
  var player = Player(name: 'parkbohee');
  runApp(App());
}

class App extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  // Material(Goggle) or Cupertino(iOS)
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello flutter!'),
        ),
        body: Center(
          child: Text('Hello world!'),
        ),
      ),
    );
  }

}