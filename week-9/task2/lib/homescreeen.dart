import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/opacity_counter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final OpacityController controller = Get.put(OpacityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Opacity Changer With GetX"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Container(
              width: 200,
              height: 200,
              color: Colors.teal.withOpacity(controller.opacity.value),
            ),),
            Obx(() => Slider(value: controller.opacity.value, onChanged: (value){
              controller.setOpacity(value);
              
            }),)
          ],
        ),
      ),
    );
  }
}
