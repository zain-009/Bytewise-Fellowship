import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/post_payment.dart';
import 'controllers.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  FavouriteController cartController = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[400],
        title: const Text(
          "My Cart",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
                flex: 9,
                child: Obx(
                  () => ListView.builder(
                      itemCount: cartController.tempList.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            onTap: () {
                              cartController.removeFromCart(cartController.tempList[index].toString());
                              cartController.removeItemCountTile(cartController.itemsList.indexWhere((name) => name == cartController.itemsList[index]));
                              cartController.subTotal(
                                cartController.itemsList.indexWhere(
                                        (name) =>
                                    name ==
                                        cartController
                                            .itemsList[index]),
                              );
                              },
                            title:
                                Text(cartController.tempList[index].toString()),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(cartController.itemDetail[index].toString()),
                              ],
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Obx(() =>
                                    cartController.itemCountTile[index] <= 0
                                        ? Container()
                                        : CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.grey[600],
                                      child: Text(
                                        cartController
                                            .itemCountTile[index]
                                            .toString(),
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ))
                                  ],
                                ),
                                const SizedBox(width: 10,),
                                CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.grey,
                                  child: Icon(Icons.remove,color: Colors.red[700],),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                )),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25,top: 20,bottom: 20),
                  child: Obx(() => cartController.itemcount >0 ? Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700]),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                    text: "Rs ",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    )),
                                TextSpan(
                                    text: cartController.total.toString(),
                                    style: const TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PostPayment()));
                        },
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Center(
                              child: Text(
                                "Pay",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                        ),
                      ),
                    ],
                  ) :
                   Center(
                    child: Text("You haven't selected anything yet",style: GoogleFonts.mandali(fontSize: 23),),
                  )
                  )
                )),
          ],
        ),
      ),
    );
  }
}