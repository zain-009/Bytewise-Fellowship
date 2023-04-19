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
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assets"),
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 300,
                width: 300,
                child: Image.asset('assets/chip.jpg')),
            SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('assets/flutter1.jpg')),
            SizedBox(
              height: 250,
              width: 300,
              child: Image.network('https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/set-background-image-flutter-hero.jpeg?resize=950%2C500&ssl=1'),
            )
          ],
        ),
      ),
    );
  }
}
