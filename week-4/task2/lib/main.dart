import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text("Images"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Container(
            height: 300,
              width: 300,
              child: Image(image: AssetImage('images/flutter.jpg'))),
            Container(
                height: 300,
                width: 300,
                child: Image(image: NetworkImage('https://i.scdn.co/image/ab6761610000e5ebf777c8d6f705fa1e32f75b86'))),
          ],
        ),
      ),
    );
  }
}

