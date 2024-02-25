import 'package:flutter/widgets.dart';

class Responsive extends StatelessWidget {
final Widget mobilescreen;
final Widget webscreen;
  const Responsive({super.key, required this.mobilescreen, required this.webscreen});
 final int screenSize = 600;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
    // ignore: non_constant_identifier_names
    builder:(context,Constraints){
    if(Constraints.minWidth>screenSize){
    return webscreen;
    }else {
    return mobilescreen;
    }
    });
  }
}