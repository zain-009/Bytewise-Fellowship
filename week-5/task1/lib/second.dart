import 'package:flutter/material.dart';
import 'package:task1/third.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  double target = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Tween Animation Builder"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const Third()));
              },
              icon: const Icon(Icons.arrow_forward_rounded))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              curve: Curves.bounceOut,
                tween: Tween<double>(begin: 0, end: target),
                duration: const Duration(milliseconds: 500),
                builder: (context, size, _) {
                  return IconButton(
                    iconSize: size,
                      color: Colors.red,
                      onPressed: () {
                        setState(() {
                          target = target == 40 ? 120 : 40;
                        });
                      },
                      icon: const Icon(Icons.favorite));
                })
          ],
        ),
      ),
    );
  }
}
