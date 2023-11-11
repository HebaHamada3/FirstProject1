import 'package:firstproject1/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: const Text(
          'WakeUp and MakeUp!!',
          style: TextStyle(
            fontSize: 36.0,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image4.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 50.0),
            CustomButton(
              text: "Login",
              onTap: () {
                Get.toNamed('/login');
              },
            ),
            const SizedBox(height: 20.0),
            // Login Form

            const SizedBox(width: 50.0),
            CustomButton(
              text: "SignUp",
              onTap: () {
                Get.toNamed('/signup');
              },
            ),
            const SizedBox(height: 20.0),
            // SignUp Form
            const SizedBox(width: 50.0),
          ],
        ),
      ),
    );
  }
}
