import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Top Widgets"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topCenter,
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://logowik.com/content/uploads/images/flutter5786.jpg')),
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(blurRadius: 10, color: Colors.blue),
                  ],
                  border: Border.all(width: 3, color: Colors.green)),
              child: const Center(
                child: Text(
                  "This is a Container",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 70,
                    color: Colors.cyan,
                    child: const Text("Expanded Container 1 with flex 2"),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 70,
                    color: Colors.blue,
                    child: const Text("Expanded Container 2 with flex 1"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 70,
                    color: Colors.green,
                    child: const Text("Expanded Container 3 with flex 1"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    const Text("Stack",style: TextStyle(fontSize: 28),),
                  ],
                ),
                const CircleAvatar(
                  backgroundColor: Colors.brown,
                  radius: 60,
                  child: CircleAvatar(
                    radius: 55,
                    backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/118763595?v=4'),
                  ),
                ),
                const SizedBox(height: 100,child: VerticalDivider(thickness: 1,color: Colors.black,),)
                //vertical divider must be used in sized box with a height
              ],
            ),
            const Divider(height: 10,color: Colors.black,thickness: 1,),


          ],
        ),
      ),
    );
  }
}
