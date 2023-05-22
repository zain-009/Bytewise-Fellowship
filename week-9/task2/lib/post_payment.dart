import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'controllers.dart';

class PostPayment extends StatefulWidget {
  const PostPayment({Key? key}) : super(key: key);

  @override
  State<PostPayment> createState() => _PostPaymentState();
}

class _PostPaymentState extends State<PostPayment> {
  FavouriteController cartController = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Congrats",
              style: GoogleFonts.mandali(fontSize: 70),
            ),
            Column(
              children: [
                Text(
                  "You paid",
                  style: TextStyle(fontSize: 40, color: Colors.grey[500]),
                ),
                Text(
                  "Rs ${cartController.total}",
                  style: TextStyle(fontSize: 60, color: Colors.grey[500]),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).popUntil((route) => route.isFirst);
        },
        splashColor: Colors.teal,
        child: const Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
