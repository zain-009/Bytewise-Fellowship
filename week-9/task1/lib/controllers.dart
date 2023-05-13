import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

//for Counter App
class CounterController extends GetxController{
  RxInt counter = 0.obs;
  incrementCounter(){
    counter.value++;
  }
}

//for Opacity changer
class OpacityChanger extends GetxController{
  RxDouble opacity = 0.0.obs;

  setOpacity(double value){
    opacity.value = value;
  }
}

//for Switch
class SwitchController extends GetxController{
  RxBool notifications = false.obs;

  setNotification(bool value){
    notifications.value = value;
  }
}

//for Favourite List
class FavouriteController extends GetxController{
  RxList<String> fruitList = ['Orange','Apple','Mangoes','Banana'].obs;
  RxList tempFruitList = [].obs;

  addToFav(String value){
    tempFruitList.add(value);
  }
  removeFromFav(String value){
    tempFruitList.remove(value);
  }
}

//for Form
class LoginController extends GetxController{
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool loading = false.obs;

  void loginApi()async{
    try{
      final response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {
            'email' : emailController.value.text,
            'password' : passwordController.value.text,
          });
      var data = jsonDecode(response.body);
      if(response.statusCode == 200){
        Get.snackbar('Login Successful', 'Congrats!');
      } else {
        Get.snackbar('Login Failed', 'error');
      }
    } catch(e) {
      Get.snackbar('Exception', e.toString());
    }

  }
}