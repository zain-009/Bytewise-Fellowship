import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get floatingActionButton => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          centerTitle: true,
          title: const Text("Flutter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Text("Body",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.cyan),),
              FloatingActionButton(
                splashColor: Colors.cyan,
                backgroundColor: Colors.green,
                foregroundColor: Colors.black,
                mini: false,
                onPressed: () {},
                child: const Icon(Icons.add,size: 50,),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Feed'
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings'
            ),
          ],
        ),
      ),
    );
  }
}
