import 'package:flutter/material.dart';
import 'package:grocery_app/ui/login.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:


      Stack(children: [
        Positioned(
            right: 0,left: 0,
            child: Image.asset('assets/home/bg image.png',fit: BoxFit.fill,)),
        Positioned(left: 102,top: 87,
            child: Image.asset('assets/home/cuate.png',height: 185,width: 188,)),
        const Positioned(left: 150,top: 313,
            child: Text('Sign up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),)),



        const Positioned(
          left: 53,
          top: 374,
          right: 50,
          child: SizedBox(
            width: 325,
            height: 46,
            child: TextField(cursorColor: Colors.white,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color(0xFFffffff),
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                labelText: "Name",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFFffffff),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(color: Color(0xFFFfffff)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(color: Color(0xFFFfffff)),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always, // Always show the label
              ),
            ),
          ),
        ),
        const Positioned(
          left: 53,
          top: 449,
          right: 50,
          child: SizedBox(
            width: 325,
            height: 46,
            child: TextField(cursorColor: Colors.white,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color(0xFFffffff),
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFFffffff),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(color: Color(0xFFFfffff)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(color: Color(0xFFFfffff)),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always, // Always show the label
              ),
            ),
          ),
        ),
        const Positioned(
          left: 53,
          top: 524,
          right: 50,
          child: SizedBox(
            width: 325,
            height: 46,
            child: TextField(cursorColor: Colors.white,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color(0xFFffffff),
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFFffffff),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(color: Color(0xFFFfffff)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(color: Color(0xFFFfffff)),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always, // Always show the label
              ),
            ),
          ),
        ),
        Positioned(
            left: 100,
            top: 618,
            right: 100,
            child: Container(
              width: 235,
              height: 58,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)),
              child: const Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Color(0xff7750FF)),
                  )),
            )),
        Positioned(
          left: 95,
          top:700,
          right: 95,
          child: Row(children: [
            const Text('Have An Account ?',style: TextStyle(fontSize: 14,color: Colors.white),),
            const SizedBox(width: 6,),
            GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const login(),));
            },
                child: const Text('Login',style: TextStyle(fontSize: 16,color: Color(0xffF6CA48),fontWeight: FontWeight.bold),)),

          ],),
        )

      ],),
    );
  }
}
