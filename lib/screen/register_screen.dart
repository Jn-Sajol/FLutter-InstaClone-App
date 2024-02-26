import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instaclone/widgets/textfiled.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailtextEditingController =
      TextEditingController();
  final TextEditingController passtextEditingController =
      TextEditingController();
  final TextEditingController nametextEditingController =
      TextEditingController();
  final TextEditingController phonetextEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(33),
        child: Column(
          children: [
            const Text('login oage'),
             Stack(
            children: [
            const SizedBox(
            height: 130,
            width: 130,
              child: CircleAvatar(
              foregroundImage:NetworkImage('https://media.licdn.com/dms/image/C5603AQFQcYaGpfxNZg/profile-displayphoto-shrink_400_400/0/1640492808538?e=1714608000&v=beta&t=RAwZAB6d3rRQTuulQvpMOc119U97Tzmds45HTDFu4ak'),
              ),
              
            ),
            Positioned(
            right: 0,
            bottom: 6,
              child: IconButton(
              onPressed: (){},
               icon: const Icon(Icons.camera_alt)
               ),
            ),
            //  Positioned(right: 0,bottom: -2,)
            ],
            ),
            const SizedBox(
              height: 24,
            ),
            Textfiled(
                hintext: 'Name',
                contollerText: nametextEditingController,
                showText: false),
            const SizedBox(
              height: 24,
            ),
            Textfiled(
                hintext: 'Phone NUmber',
                contollerText: phonetextEditingController,
                showText: false),
            const SizedBox(
              height: 24,
            ),
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
              height: 44,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Login"),
              ),
            ),
            const Row(
              children: [
                Text('Dont have register yet?'),
                Text(
                  'Register',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
