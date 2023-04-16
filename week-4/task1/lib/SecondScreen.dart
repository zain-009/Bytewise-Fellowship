import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const TapBoxA(),
              TapBoxB(onChanged: (bool value) {  },),
            ],
          )
          
        ],
      ),
    ),
    );
  }
}
class TapBoxA extends StatefulWidget {
  const TapBoxA({Key? key}) : super(key: key);

  @override
  State<TapBoxA> createState() => _TapBoxAState();
}
class _TapBoxAState extends State<TapBoxA> {
  bool _active = true;
  void _handletap(){
    setState(() {
      _active = !_active;
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handletap,
      child: Container(
        decoration: BoxDecoration(
          color: _active ? Colors.green : Colors.grey,
        ),
        height: 150,
        width: 150,
        child: Center(child: Text(_active ? 'Active' : 'InActive', style: const TextStyle(fontSize: 20),)),
      ),
    );
  }
}

class ParentWidget extends StatefulWidget {
  const ParentWidget({Key? key}) : super(key: key);

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}
class _ParentWidgetState extends State<ParentWidget> {
  bool _isActive = true;

  void _tapboxChanged(bool newValue) {
    setState(() {
      _isActive = newValue;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TapBoxB(
          active : _isActive,
          onChanged: _tapboxChanged,
      ),
    );
  }
}

class TapBoxB extends StatelessWidget {
  const TapBoxB({
    super.key,
    this.active = false,
    required this.onChanged,
    });
    final bool active;
    final ValueChanged<bool> onChanged;

    void _handleTap(){
      onChanged(!active);
    }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        decoration: BoxDecoration(
          color: active ? Colors.green : Colors.grey,
        ),
        height: 150,
        width: 150,
        child: Center(child: Text(active ? 'Active' : 'InActive',style: const TextStyle(fontSize: 20),)),
      ),
    );
  }
}
