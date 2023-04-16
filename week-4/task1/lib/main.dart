import 'package:flutter/material.dart';

import 'SecondScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Interactivity"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image(image: AssetImage('assets/monal.jpg')),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: const [
                    Text(
                      "The Monal",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Islamabad, Pakistan",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    )
                  ],
                ),
                Row(
                  children: [
                    FavouriteWidget(),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.blue,
                      size: 30,
                    ),
                    Text(
                      "Call",
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.double_arrow,
                      color: Colors.blue,
                      size: 30,
                    ),
                    Text(
                      "Route",
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.blue,
                      size: 30,
                    ),
                    Text(
                      "Share",
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22),
            child: Container(
              child: const Text(
                "The Monal Restaurant Pir Sohawa situated at the Margallah hills offers indoor & outdoor dining with an extensive view of the Capital. Monal Islamabad is a perfect blend of traditional & contemporary cuisine. It offers a vitalizing experience in fine-dining that attracts locals and tourists alike. Monal Islamabad is the flagship restaurant of The Monal Group of Companies. Since 2006, Monal Islamabad is serving its guests with the best fine dining experiences.",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));}, icon: Icon(Icons.arrow_forward_rounded))
        ],
      ),
    );
  }
}

class FavouriteWidget extends StatefulWidget {
  const FavouriteWidget({Key? key,}) : super(key: key);

  @override
  State<FavouriteWidget> createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavouriteWidget> {
  bool _isFavourited = true;
  int _favouriteCount = 41;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            padding: EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavourited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          child: SizedBox(
            child: Text(
              "$_favouriteCount",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
  void _toggleFavorite() {
    setState(() {
      if (_isFavourited) {
        _favouriteCount -= 1;
        _isFavourited = false;
      } else {
        _favouriteCount += 1;
        _isFavourited = true;
      }
    });
  }
}
