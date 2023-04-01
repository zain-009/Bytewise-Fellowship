import 'package:flutter/material.dart';

import '../secondPage/second.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Center(
            child: Text(
          "Flutter",
          style: TextStyle(fontSize: 26),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(blurRadius: 90, color: Colors.grey),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      "This is a Container",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      padding: const EdgeInsets.only(top: 5),
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          )),
                      child: const Text(
                        "Folder 1",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 120,
                      width: 150,
                      padding: const EdgeInsets.only(top: 5),
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          )),
                      child: const Text(
                        "Folder 2",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 150,
                      padding: const EdgeInsets.only(top: 5),
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          )),
                      child: const Text(
                        "Folder 3",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 150,
                      padding: const EdgeInsets.only(top: 5),
                      decoration: const BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          )),
                      child: const Text(
                        "This is a Stack",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    print("You Clicked Me!");
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    padding: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: const Text(
                      "Click Me",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                const Text("""Gesture Detector.
Check terminal after tap!"""),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondPage()));
                },
                child: const Text(
                  "Next Page",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
