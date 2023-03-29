import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Center(child: Text("Flutter",style: TextStyle(fontSize: 28),)),
      ),
      body: Center(
        child: Column(
          children: [
            Text("data"),
          ],
        ),
      ),
    );
  }
}
