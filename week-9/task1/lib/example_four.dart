import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/example_five.dart';

import 'controllers.dart';

class ExampleFour extends StatefulWidget {
  const ExampleFour({Key? key}) : super(key: key);

  @override
  State<ExampleFour> createState() => _ExampleFourState();
}

class _ExampleFourState extends State<ExampleFour> {

  FavouriteController favouriteController = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart with GetX"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ExampleFive()));
          }, icon: const Icon(Icons.arrow_forward))
        ],
      ),
      body: ListView.builder(
          itemCount: favouriteController.fruitList.length,
          itemBuilder: (context, index){
        return Card(
          child: ListTile(
            onTap: (){
              if(favouriteController.tempFruitList.contains(favouriteController.fruitList[index].toString())){
                favouriteController.removeFromFav(favouriteController.fruitList[index].toString());
              } else {
                favouriteController.addToFav(favouriteController.fruitList[index].toString());
              }
            },
            title: Text(favouriteController.fruitList[index].toString()),
            trailing: Obx(() => Icon(
                Icons.favorite,
                color: favouriteController.tempFruitList.contains(favouriteController.fruitList[index].toString()) ? Colors.red : Colors.grey
            ),)
          ),
        );
      })
    );
  }
}
