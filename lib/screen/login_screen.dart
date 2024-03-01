import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instaclone/widgets/textfiled.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailtextEditingController =
      TextEditingController();
  final TextEditingController passtextEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(33),
        child: Column(
          children: [
            SvgPicture.asset('assets/images/insta.svg'),
            //here we need to add pub dependency first
            const Text('login oage'),
            const SizedBox(height: 25,),
            Textfiled(
                hintext: 'Email',
                contollerText: emailtextEditingController,
                showText: false),
            const SizedBox(
              height: 24,
            ),
            Textfiled(
                hintext: 'Password',
                contollerText: passtextEditingController,
                showText: true),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
            width: double.infinity,
            height: 45,
            child: ElevatedButton(
            onPressed: () {}, 
            child: const Text("Login"),
            ),
            ),
            const Row(
            children: [
              Text('Dont have register yet?'),
              Text('Register',style: TextStyle(color: Colors.red),),
            ],
            )
          ],
        ),
      ),
    );
  }
}
