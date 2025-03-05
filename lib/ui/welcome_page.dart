import 'package:flutter/material.dart';
import 'package:grocery_app/ui/login.dart';
import 'package:grocery_app/ui/signup.dart';

class welcome_page extends StatefulWidget {
  const welcome_page({super.key});

  @override
  State<welcome_page> createState() => _welcome_pageState();
}

class _welcome_pageState extends State<welcome_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              bottom: 0,
              child: Image.asset('assets/home/bg image.png')),
          Positioned(
              left: 0,
              right: 76,
              child: Image.asset(
                'assets/home/wlcm.png',
              )),
          Positioned(
              left: 76,
              top: 436,
              child: GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const login(),));
              },
                child: Container(
                  width: 235,
                  height: 58,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: const Center(
                      child: Text(
                    'Log In',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Color(0xff7750FF)),
                  )),
                ),
              )),
          Positioned(
              left: 76,
              top: 510,
              child: GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const signup(),));
              },
                child: Container(
                  width: 235,
                  height: 58,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 1, color: Colors.white)),
                  child: const Center(
                      child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Color(0xffffffFF)),
                  )),
                ),
              )),
          const Positioned(
              left: 153,
              top: 575,
              child: Text(
                'sign up using',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              )),
          Positioned(
              left: 76,
              top: 610,
              child: Container(
                width: 235,
                height: 58,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 25,),
                  Image.asset('assets/home/ggl.png',width: 40,height: 40,),
                    const SizedBox(width: 25,),
                  Image.asset('assets/home/fb.png',width: 40,height: 40,),
                    const SizedBox(width: 25,),
                  Image.asset('assets/home/twt.png',width: 40,height: 40,),
                    const SizedBox(width: 25,),
                ],),
              )),
        ],
      ),
    );
  }
}
