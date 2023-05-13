import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/controllers.dart';
import 'package:task1/example_two.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX State Management"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ExampleTwo()));
          }, icon: const Icon(Icons.arrow_forward))
        ],
      ),
      body: Center(
        child: Obx((){
          return Text(controller.counter.toString(),style: const TextStyle(fontSize: 100),);
        })
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          controller.incrementCounter();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
