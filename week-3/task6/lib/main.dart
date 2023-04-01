import 'package:flutter/material.dart';
import 'package:task6/second/second.dart';

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
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  final List<Image> myImages = const [
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fill,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fill,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fill,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fill,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fill,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fill,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fill,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fill,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fill,),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text("Flutter UI Layout"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Image.asset('assets/flutter.jpg')),
                  Expanded(flex:2,child: Image.asset('assets/flutter.jpg')),
                  Expanded(child: Image.asset('assets/flutter.jpg')),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.star,color: Colors.green,),
                  Icon(Icons.star,color: Colors.green,),
                  Icon(Icons.star,color: Colors.green,),
                  Icon(Icons.star,color: Colors.black,),
                  Icon(Icons.star,color: Colors.black,),
                ],
              ),
              const SizedBox(height: 10,),
              Card(
                child: SizedBox(
                  height: 170,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.star,color: Colors.green,),
                                Icon(Icons.star,color: Colors.green,),
                                Icon(Icons.star,color: Colors.green,),
                                Icon(Icons.star,color: Colors.black,),
                                Icon(Icons.star,color: Colors.black,),
                              ],
                            ),
                            const Text(
                              "170 Reviews",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        const SizedBox(height: 35,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: const [
                                Icon(Icons.book_online,size: 25,color: Colors.green,),
                                SizedBox(height: 5,),
                                Text("PREP:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                Text("25 min",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Column(
                              children: const [
                                Icon(Icons.access_time_outlined,size: 25,color: Colors.green,),
                                SizedBox(height: 5,),
                                Text("COOK:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                Text("1 hr",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Column(
                              children: const [
                                Icon(Icons.flatware,size: 25,color: Colors.green,),
                                SizedBox(height: 5,),
                                Text("FEEDS:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                Text("4 to 6",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Second()),);
                  }, child: const Text("Next Page")),
              const SizedBox(height: 10,),
              // GridView.builder(
              //   shrinkWrap: true,
              // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              // itemBuilder: (BuildContext context, int index) { children: [...myImages]; },
              //
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

