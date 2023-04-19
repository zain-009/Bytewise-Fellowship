import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back_ios,color: Colors.pink,),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Food Delivery",style: TextStyle(color: Colors.black),),
            Text("HOME",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black),),
          ],
        ),
        actions: const [
          Icon(Icons.favorite_border,color: Colors.pink,size: 28,),
          SizedBox(width: 10,),
          Icon(Icons.shopping_basket_outlined,color: Colors.pink,size: 28,),
          SizedBox(width: 10,),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.search_outlined,size: 30,),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Search for restaurants,cuisines...'
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Icon(Icons.stacked_line_chart,color: Colors.black,),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20)
                ),
                height: 300,
                width: 450,

              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 300,
              width: 450,
              color: Colors.deepPurple,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 300,
              width: 450,
              color: Colors.deepPurple,
            ),
          ),
        ],
      ),
    );
  }
}

