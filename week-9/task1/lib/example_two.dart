import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/controllers.dart';
import 'package:task1/example_three.dart';

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({Key? key}) : super(key: key);

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {

  OpacityChanger opacityChanger = Get.put(OpacityChanger());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Opacity Changer GetX"),
        centerTitle: true,
        actions: [IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ExampleThree()));
        }, icon: const Icon(Icons.arrow_forward))],
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Container(
              height: 200,
              width: 200,
              color: Colors.teal.withOpacity(opacityChanger.opacity.value),
            )),
            Obx(() => Slider(value: opacityChanger.opacity.value, onChanged: (value){
              opacityChanger.setOpacity(value);
            }))
          ],
        ),
      ),
    );
  }
}
