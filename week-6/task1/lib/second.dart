import 'package:flutter/material.dart';
import 'package:task1/third.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  FocusNode fieldOne = FocusNode();
  FocusNode fieldTwo = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Focus"),
        actions: [
          IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const Third()));}, icon: const Icon(Icons.arrow_forward_rounded,))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
              ),
              child: TextFormField(
                focusNode: fieldOne,
                onFieldSubmitted: (value){
                  FocusScope.of(context).requestFocus(fieldTwo);
                },
                decoration: const InputDecoration(
                    hintText: 'Field 1'
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(width: 1)
              ),
              child: TextFormField(
                focusNode: fieldTwo,
                decoration: const InputDecoration(
                    hintText: 'Field 2'
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

