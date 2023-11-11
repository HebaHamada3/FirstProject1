import 'package:firstproject1/view/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'View/register.dart';
import 'View/signup.dart';
import 'View/home.dart';
import 'View/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        getPages: [
          GetPage(name: '/', page: () => const Register()),
          GetPage(name: '/login', page: () => LoginScreen()),
          GetPage(name: '/signup', page: () => SignUpScreen()),
          GetPage(name: '/home', page: () => Home()),
          GetPage(name: '/splash', page: () => const Splash()),
        ]);
  }
}
