import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/counter_controller.dart';

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
      ),
      body: Center(
        child: Obx((){
          return Text(controller.counter.toString(),style: const TextStyle(fontSize: 60),);
        })
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.incrementCounter();
        },
      ),
    );
  }
}
