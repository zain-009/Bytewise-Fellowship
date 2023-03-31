import 'package:flutter/material.dart';

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
  int followCounter = 0;
  int likesCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text("Stateful Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 40,),
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.teal,
              child: CircleAvatar(
                radius: 57,
                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/118763595?v=4'),
              ),
            ),
            const SizedBox(height: 10,),
            const Text(
              "Zain Ali",style: TextStyle(color: Colors.white,
                fontSize: 26,fontWeight: FontWeight.bold),),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.cyan
                      ),
                      child:  Row(
                        children: [
                          Text("$likesCounter",style: const TextStyle(color: Colors.white,fontSize: 30),),
                          const Icon(Icons.favorite_rounded,color: Colors.red,size: 40,)
                        ],
                      ),
                    ),
                    const SizedBox(height: 5,),
                    const Text("Likes",style: TextStyle(fontSize: 22,color: Colors.white),),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.cyan
                      ),
                      child: Row(
                        children: [
                          Text("$followCounter",style: const TextStyle(color: Colors.white,fontSize: 30),),
                          const Icon(Icons.account_circle,color: Colors.blue,size: 40,),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5,),
                    const Text("Followers",style: TextStyle(fontSize: 22,color: Colors.white),),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40,),
            const Divider(thickness: 1,color: Colors.white,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){
                  setState(() {
                    likesCounter++;
                  });
                },iconSize: 50, icon: const Icon(Icons.favorite_border,color: Colors.red,size: 50,)),
                IconButton(onPressed: (){
                  setState(() {
                    followCounter++;
                  });
                },iconSize: 50,color: Colors.white, icon: const Icon(Icons.add_reaction,color: Colors.blue,size: 50,)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

