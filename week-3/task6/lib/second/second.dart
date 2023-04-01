import 'package:flutter/material.dart';
class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text("Flutter UI Layout"),
      ),
      body: Center(
        child: Column(
          children: [
            ListView.builder(
              itemCount: 30,
              itemBuilder: (context , index){
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.brown,
                    //radius: 60,
                    child: CircleAvatar(
                      radius: 55,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/118763595?v=4'),
                    ),
                  ),
                  title: Text("Zain Ali"),
                  subtitle: Text("Hello!"),
                  trailing: Text("5:20 AM"),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
