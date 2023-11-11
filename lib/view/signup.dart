import 'package:firstproject1/view/widgets/custom_button.dart';
import 'package:firstproject1/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _comfirmpasswordController =
  TextEditingController();

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[100],
          title: const Text(
            'SignUp ',
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
              children: <Widget>[
                const SizedBox(height: 120.0),
                CustomTextField(
                    labelText: 'Full Name', controller: _fullnameController, obscureText: false,),
                const SizedBox(height: 15.0),
                CustomTextField(
                    labelText: 'Email', controller: _emailController, obscureText: false,),
                const SizedBox(height: 15.0),
                CustomTextField(
                    labelText: 'Password', controller: _passwordController, obscureText: true,),
                const SizedBox(height: 15.0),
                CustomTextField(
                    labelText: 'Comfirm Password',
                    controller: _comfirmpasswordController, obscureText: false,),
                const SizedBox(height: 20.0),
                // ElevatedButton(
                //   onPressed: () {
                //     Get.to(LoginScreen());
                //   },
                //   style: ButtonStyle(
                //       backgroundColor: MaterialStateProperty.all(Colors.pink[100])),
                //   child: const Text('Sign Up'),
                // ),
                CustomButton(
                  text: "SignUp",
                  onTap: () {
                    Get.to(LoginScreen());
                    //
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
