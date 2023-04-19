import 'package:flutter/material.dart';
import 'package:task2/screen_first.dart';

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
        title: const Text("Navigation and Routing"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const First(msg: 'Hello World',)));},
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[200],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1),
                ),
                child: const Center(child: Text("Go to First Screen",style: TextStyle(fontWeight: FontWeight.bold),),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

