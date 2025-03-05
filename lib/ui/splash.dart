import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery_app/ui/welcome_page.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                const welcome_page()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Stack(children: [
      Positioned(top: 0,bottom: 0,
          child: Image.asset('assets/home/bg image.png',)),
      Center(child: Image.asset('assets/home/Logo.png',width: 140,height: 131,))
    ],));
  }
}
