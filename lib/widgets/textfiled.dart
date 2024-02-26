import 'package:flutter/material.dart';

class Textfiled extends StatefulWidget {
  final String hintext;
  final TextEditingController contollerText;
  bool showText = false;
  Textfiled(
      {super.key,
      required this.hintext,
      required this.contollerText,
      required this.showText});

  @override
  State<Textfiled> createState() => _TextfiledState();
}

class _TextfiledState extends State<Textfiled> {
  final border = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(23)));
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: widget.hintext,
        border: border,
        filled: true,
        fillColor: Colors.white38,
      ),
      controller:widget.contollerText,
      obscureText: widget.showText,
    );
  }
}
