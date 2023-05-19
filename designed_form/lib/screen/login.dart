import 'package:designed_form/components/My_Button.dart';
import 'package:designed_form/components/my_txt.dart';
import 'package:designed_form/components/squareTileImage.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  void signInUser() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Icon(
                Icons.smart_display_outlined,
                size: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text( 
                ' Welcome Back You\'ve Been Missed ',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 18, 17, 17),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              MyTxt(
                  controller: userNameController,
                  obscureText: false,
                  hintText: 'username '),
              const SizedBox(
                height: 20,
              ),
              MyTxt(
                  controller: passwordController,
                  obscureText: true,
                  hintText: 'Password'),
              // forget password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'Forget Password',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              MyButton(onTap: signInUser),
              const SizedBox(
                height: 25,
              ),

              Row(
                children: const [
                  Expanded(
                    child: Divider(thickness: 0.5),
                  ),
                  Text('Or Continue With'),
                  Expanded(
                    child: Divider(thickness: 0.5),
                  ),
                ],
              ),

              const SizedBox(
                height: 40,
              ),
              //  Apple and Google Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SquareTileImage(src: 'lib/images/google.png'),
                  SizedBox(width: 20),
                  SquareTileImage(src: 'lib/images/apple.png'),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(' Not a member ? '),
                  Text(
                    'Register Now ',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
