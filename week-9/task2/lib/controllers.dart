import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> itemsList = ['Redmi Air Dots 2','Bloody W70 max','S98 Naraka','M660 Chronometer','Cherry Mx blue','MP-80N','GH-30','Blue-Light Glasses','UGREEN 20434','Blackweb 3.5 OZ','HP Pavilion 300'].obs;
  List<String> itemDetail = ['Best for office work','Rgb gaming mouse','Rgb mechanical Keyboard','Rgb gaming headphones','Keyboard switch','RGB Gaming Mouse Pad','Rogue Mid Tower Gaming Case','Eye protection','Foldable phone stand','Screen Cleaning kit','Gaming Backpack'];
  List<int> itemPrice = [4999,6000,5500,4500,250,2500,22000,999,650,800,4500];
  RxList<int> itemCountTile = [0,0,0,0,0,0,0,0,0,0,0].obs;
  List imageList = [
    Image.asset('assets/airdots2.jpg'),
    Image.asset('assets/w70_max.jpg'),
    Image.asset('assets/naraka.jpg'),
    Image.asset('assets/headphones.jpg'),
    Image.asset('assets/cherry_mx_blue.jpg'),
    Image.asset('assets/pad.jpg'),
    Image.asset('assets/case.jpg'),
    Image.asset('assets/glasses.png'),
    Image.asset('assets/stand.jpg'),
    Image.asset('assets/kit.jpg'),
    Image.asset('assets/bag.png'),
  ];
  RxList tempList = [].obs;
  RxInt itemcount = 0.obs;
  RxInt total = 0.obs;

  addToCart(String value){
    tempList.add(value);
    itemcount.value++;
  }
  removeFromCart(String value){
    tempList.remove(value);
    itemcount.value--;
  }
  addItemCountTile(value){
    itemCountTile[value] ++;
  }
  removeItemCountTile(value){
    itemCountTile[value] --;
  }
  addTotal(value){
    total += itemPrice[value];
  }
  subTotal(value){
    total -= itemPrice[value];
  }
}