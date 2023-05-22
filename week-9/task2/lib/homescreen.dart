import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/controllers.dart';
import 'cart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FavouriteController cartController = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text(
          "Mart",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueGrey[400],
        centerTitle: true,
        elevation: 1,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Stack(alignment: Alignment.topRight, children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Cart()));
                  },
                  icon: const Icon(Icons.shopping_cart_outlined)),
              Obx(() => cartController.tempList.isNotEmpty
                  ? CircleAvatar(
                      radius: 9,
                      backgroundColor: Colors.red,
                      child: Text(
                        cartController.itemcount.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    )
                  : Container())
            ]),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(3),
              child: Text("Select Items to Order",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                  height: 750,
                  child: ListView.builder(
                      itemCount: cartController.itemsList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Card(
                            child: SizedBox(
                              height: 85,
                              child: ListTile(
                                onTap: () {
                                  cartController.addToCart(cartController
                                      .itemsList[index]
                                      .toString());
                                  cartController.addItemCountTile(
                                      cartController.itemsList.indexWhere(
                                          (name) =>
                                              name ==
                                              cartController.itemsList[index]));
                                      cartController.addTotal(
                                        cartController.itemsList.indexWhere(
                                            (name) =>
                                                name ==
                                                cartController
                                                    .itemsList[index]),
                                      );
                                },
                                leading: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: cartController.imageList[index],
                                ),
                                title: Text(
                                    cartController.itemsList[index].toString()),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(cartController.itemDetail[index]
                                        .toString()),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Text(
                                      'Rs ${cartController.itemPrice[index]}',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.grey[900]),
                                    ),
                                  ],
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Obx(() => cartController
                                                .itemCountTile[index] >
                                            0
                                        ? CircleAvatar(
                                            radius: 12,
                                            backgroundColor: Colors.grey[600],
                                            child: Obx(
                                              () => Text(
                                                cartController
                                                    .itemCountTile[index]
                                                    .toString(),
                                                style: const TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ))
                                        : Container())
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                Obx(
                  () => cartController.itemcount > 0
                      ? Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 10),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Cart()));
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: const Center(
                                  child: Text(
                                "Checkout",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                            ),
                          ),
                        )
                      : Container(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
