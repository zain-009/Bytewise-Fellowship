import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Third extends StatelessWidget {
  const Third({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Fonts"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("This is a Google Font",style: TextStyle(fontFamily: 'Bebas',fontSize: 30),),
            Text("Signature",style: GoogleFonts.sacramento(fontSize: 50,fontStyle: FontStyle.italic,fontWeight: FontWeight.w700)),
          ],
        ),
      ),
    );
  }
}
