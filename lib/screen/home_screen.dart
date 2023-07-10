import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic_ball/controller/home_screen_controller.dart';
import 'package:magic_ball/utils/style.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  HomeScreenController homeScreenController = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF82b1ff),
        appBar: AppBar(
          backgroundColor: Color(0XFF303F9F),
          title: const Text(
            'Ask me Anything',
            style: TextStyle(
                fontSize: 25,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: TextButton(
          style: textButtonStyle,
          onPressed: () {
            homeScreenController.ballValueChange();
            // print(homeScreenController.ballValue.value);
          },
          child: Obx(() => Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Center(
                  child: Image.asset(
                      'images/ball${homeScreenController.ballValue.value}.png'),
          
                ),
          ),
          //     child: Text("${homeScreenController.ballValue.value}"),
          // ),
              ),
        ),
      ),
    );
  }
}
