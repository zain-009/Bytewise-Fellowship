import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  const Third({Key? key}) : super(key: key);

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third>with SingleTickerProviderStateMixin{
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
        duration: const Duration(seconds: 4),
        vsync: this,
    );
    _animationController.repeat();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Explicit Animation"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            RotationTransition(
                alignment: Alignment.center,
                turns: Tween<double>(begin: 0,end: 1).animate(_animationController),
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.blueGrey,
                )
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(_animationController.isAnimating){
            _animationController.stop();
          }else {
            _animationController.repeat();
          }
          },
      child: const Icon(Icons.add),
      ),
    );
  }
}
