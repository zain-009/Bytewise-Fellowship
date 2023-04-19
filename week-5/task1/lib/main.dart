import 'package:flutter/material.dart';
import 'package:task1/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double width = 100;
  double height = 100;
  Color color = Colors.black;
  double opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Implicit Animation"),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Second()));
          }, icon: const Icon(Icons.arrow_forward_rounded))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedOpacity(
                    curve: Curves.linear,
                    opacity: opacity,
                    duration: const Duration(milliseconds: 500),
                    child: Container(
                      width: 200,
                      height: 100,
                      color: Colors.black,
                    )),
                IconButton(onPressed: (){
                  setState(() {
                    opacity = opacity == 1.0 ? 0.2 : 1.0;
                  });
                }, icon: const Icon(Icons.add))
              ],
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              curve: Curves.bounceOut,
              height: height,
              width: width,
              color: color,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          width = width == 100 ? 200 : 100;
          height = height == 100 ? 200 : 100;
          color = color == Colors.black ? Colors.cyan : Colors.black;
        });
      },
      child: const Icon(Icons.add),
      ),
    );
  }
}
