import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instaclone/firebase_options.dart';
import 'package:instaclone/responsive/mobile_screen.dart';
import 'package:instaclone/responsive/responsive.dart';
import 'package:instaclone/responsive/web_screen.dart';
import 'package:instaclone/screen/login_screen.dart';
import 'package:instaclone/screen/register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColorDark: Colors.white,
        scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
        useMaterial3: true,
      ),
      // home: const Responsive(mobilescreen: MobileScreen(), webscreen: WebScreen()),
      home: const RegisterScreen(),
    );
  }
}
