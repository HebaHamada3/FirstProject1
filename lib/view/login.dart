import 'package:firstproject1/view/widgets/custom_button.dart';
import 'package:firstproject1/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[100],
          title: const Text(
            'Welcome back',
            style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
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
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                    labelText: 'Username', controller: _usernameController, obscureText: false,),
                const SizedBox(height: 15.0),
                CustomTextField(
                   labelText: 'Password', controller: _passwordController, obscureText:true,),
                const SizedBox(height: 40.0),
                CustomButton(
                  text: "Login",
                  onTap: () {
                    if (_usernameController.text.isEmpty &&
                        _passwordController.text.isEmpty) {
                      Get.snackbar("Error", "Fill all fields",
                          backgroundColor: Colors.pink.shade100,
                          maxWidth: 300,
                          snackPosition: SnackPosition.BOTTOM);
                    } else {
                      Get.snackbar(
                        "Great",
                        "Login successful!",
                        backgroundColor: Colors.pink.shade100,
                        maxWidth: 300,
                      );
                      Get.toNamed("/splash");
                    }
                  },
                ),
                const SizedBox(height: 20.0),
                TextButton(
                  onPressed: () {
                    // Navigate to Forgot Password screen
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.pink[100], fontSize: 19),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
