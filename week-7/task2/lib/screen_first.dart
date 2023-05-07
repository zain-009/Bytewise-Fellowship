import 'package:flutter/material.dart';

class First extends StatelessWidget {
  final String msg;
  const First({Key? key, required this.msg}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("First Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1)
              ),
              child: Center(
                child: Text(msg,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            ),
            InkWell(
              onTap: (){Navigator.pop(context);},
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.deepPurple[200],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1)
                ),
                child: const Center(child: Text("Go Back to HomeScreen"),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
