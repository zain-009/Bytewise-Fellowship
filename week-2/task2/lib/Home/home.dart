import 'package:flutter/material.dart';
import 'package:task2/Login/login.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.center,children: const [Text("Welcome to Flutter")],),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(backgroundColor: Colors.cyan,radius: 100,child: CircleAvatar(radius: 95,backgroundImage: AssetImage('assets/flutter.jpg'),),),
            const SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10),
              ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()));
                },
                child: const Text(
                  "Continue",
                  style: TextStyle(fontSize: 26),
                )),
          ],
        ),
      ),
    );
  }
}
