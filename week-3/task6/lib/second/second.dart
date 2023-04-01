import 'package:flutter/material.dart';
class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);
  final List<Image> myImages = const [
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/black.jpg'),fit: BoxFit.fitWidth,),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text("Flutter UI Layout"),
      ),
      body: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        crossAxisCount: 3,
      children: [
        ...myImages,
      ],
      ),
    );
  }
}
