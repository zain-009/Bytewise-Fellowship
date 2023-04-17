import 'package:flutter/material.dart';
import 'package:task3/second.dart';
import 'package:task3/third.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '1',
      routes: {
        '1' : (context) => const FirstScreen(),
        '2' : (context) => SecondScreen(),
      },
    );
  }
}
class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text("Home Screen"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){Navigator.pushNamed(context, '2');}, child: Text("Navigate Using Named-Route")),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const ThirdScreen()));}, child: Text("Navigate Using Navigator")),
          ],
        ),
      ),
    );
  }
}

