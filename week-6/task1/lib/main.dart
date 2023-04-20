import 'package:flutter/material.dart';

import 'first.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.pink,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Food Delivery",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            Text(
              "HOME",
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.favorite_border,
            color: Colors.white,
            size: 28,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.shopping_basket_outlined,
            color: Colors.white,
            size: 28,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            //Foodpanda UI Search bar Sliver
            floating: true,
            pinned: false,
            backgroundColor: Colors.pink,
            title: Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.search_outlined,
                      size: 25,
                      color: Colors.grey[600],
                    ),
                    Text(
                      "Search for shops and restaurants..",
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20)),
                height: 300,
                width: 450,
                child: Center(
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const First()));
                      },
                      icon: const Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.white,
                        size: 50,
                      )),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple, border: Border.all(width: 1)),
                    child: const Text(
                      "Sliver List",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
              childCount: 5,
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.deepPurple, border: Border.all(width: 1)),
                  child: const Center(
                      child: Text(
                    "Sliver Grid",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              );
            }),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 4,
            ),
          ),
        ],
      ),
    );
  }
}
