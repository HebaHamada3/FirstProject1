import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Get.offAllNamed("/home");
    });
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(image: AssetImage("assets/lips.gif")),
      ),

    );
  }
}
