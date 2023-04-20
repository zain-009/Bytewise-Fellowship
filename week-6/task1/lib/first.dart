import 'package:flutter/material.dart';
import 'package:task1/second.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  Color? color = Colors.deepPurple[200];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Gestures"),
          actions: [
            IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const Second()));}, icon: const Icon(Icons.arrow_forward,size: 25,))
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onDoubleTap: (){
                  setState(() {
                    color = Colors.brown;
                  });
                },
                onTap: (){
                  setState(() {
                    color = Colors.grey;
                  });
                },
                onLongPress: (){
                  setState(() {
                    color = Colors.deepPurple;
                  });
                },
                onVerticalDragUpdate: (details) {
                  if (details.delta.dy > 0) {
                    setState(() {
                      color = Colors.white;
                    });
                  } else if (details.delta.dy < 0) {
                    setState(() {
                      color = Colors.black;
                    });
                  }
                },
                onHorizontalDragUpdate: (details){
                  if(details.delta.dx > 0){
                    setState(() {
                      color = Colors.red;
                    });
                  }else if(details.delta.dx < 0){
                    setState(() {
                      color = Colors.blue;
                    });
                  }
                },
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      color: color,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Container(
                width: 250,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 1)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: Column(
                      children: const [
                        Text("Swipe up for Black\nSwipe down for white\nSwipe right for red\nSwipe left for blue\nSingle tap for grey\nDouble tap for brown\nLong Press for purple",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
