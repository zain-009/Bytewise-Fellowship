import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/controllers.dart';
import 'package:task1/example_four.dart';

class ExampleThree extends StatefulWidget {
  const ExampleThree({Key? key}) : super(key: key);

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {

  SwitchController switchController = Get.put(SwitchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch with GetX"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ExampleFour()));
          }, icon: const Icon(Icons.arrow_forward))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Notifications"),
                Obx(() => Switch(value: switchController.notifications.value, onChanged: (value){
                  switchController.setNotification(value);
                }),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
