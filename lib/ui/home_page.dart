import 'package:flutter/material.dart';
import 'package:grocery_app/ui/cart.dart';
import 'package:grocery_app/ui/fruits.dart';
import 'package:grocery_app/ui/item_details.dart';
import 'package:grocery_app/ui/veggies.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  List Categories = [
    'assets/home/Categories/veg image 1.png',
    'assets/home/Categories/fruits 1.png',
    'assets/home/Categories/nuts 1.png',
    'assets/home/Categories/meat 1.png'
  ];
  List cname = ['Veggies', 'Fruits', 'Nuts', 'Meats'];

  List cpage = [
    const veggies(),
    const fruits(),
  ];

  int selected = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/home/bg image.png'),
          fit: BoxFit.cover, // Optional: Adjust the fit of the image
        ),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 18, top: 74),
                child: CircleAvatar(
                  radius: 20,
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 18,
                    color: Color(0xff7750FF),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 50, right: 0),
                child: Image.asset(
                  'assets/home/location.png',
                  width: 14,
                  height: 16,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 80, left: 0),
                child: Text(
                  'Location',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 18, top: 74, left: 50),
                child: CircleAvatar(
                  radius: 20,
                  child: Icon(
                    Icons.notes,
                    size: 18,
                    color: Color(0xff7750FF),
                  ),
                ),
              ),
            ],
          ),
          const Text(
            'Malappuram,Kerala',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
                width: 359,
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: TextFormField(
                    textAlign: TextAlign.start,
                    cursorColor: const Color(0xff7750FF),
                    decoration: const InputDecoration(
                      hintText: 'Search Groceries',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xff7750FF),
                      ),
                      border: InputBorder.none,
                    ))),
          ),
          Expanded(
              child: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(23.0),
                    child: Image.asset('assets/home/Frame 14.png'),
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Color(0xff7750FF),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: Color(0xffC3B2FF),
                        ),
                      ),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Color(0xffC3B2FF),
                      ),
                    ],
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.only(left: 23, right: 250, top: 15),
                    child: Text(
                      'Categories',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selected = index;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => cpage[index],
                                    ));
                              });
                            },
                            child: Stack(
                              children: [
                                Container(
                                  width: 63.05,
                                  height: 98,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        15.19), // Add border radius to match the shape
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: SizedBox(
                                          width: 63.05,
                                          height: 98,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 48.62,
                                                child: Container(
                                                  width: 63.05,
                                                  height: 49.38,
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 16.71,
                                                    left: 6.84,
                                                    right: 7.22,
                                                    bottom: 15.67,
                                                  ),
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: ShapeDecoration(
                                                    shadows: [
                                                      BoxShadow(
                                                        color: Colors.black
                                                            .withOpacity(0.2),
                                                        spreadRadius: 2,
                                                        blurRadius: 7,
                                                        offset: const Offset(1,
                                                            -1), // changes position of shadow
                                                      ),
                                                    ],
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15.19),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        cname[index],
                                                        style: TextStyle(
                                                          color: Colors.black
                                                              .withOpacity(
                                                                  0.55),
                                                          fontSize: 12.91,
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 0.10,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 63.05,
                                                  height: 63.05,
                                                  decoration: const ShapeDecoration(
                                                    // shadows: [
                                                    //   BoxShadow(
                                                    //     color: Colors.black.withOpacity(0.2),
                                                    //     spreadRadius: 1,
                                                    //     blurRadius: 7,
                                                    //     offset: Offset(-1,
                                                    //         6), // changes position of shadow
                                                    //   ),
                                                    // ],
                                                    color: Colors.white,
                                                    shape: OvalBorder(),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 5.32,
                                                top: 5.32,
                                                child: Container(
                                                  width: 52.42,
                                                  height: 52.42,
                                                  decoration: const ShapeDecoration(
                                                    color: Color(0xFFC3B2FF),
                                                    shape: OvalBorder(),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 8.36,
                                        top: 19.75,
                                        child: Container(
                                          width: 46.71,
                                          height: 23.55,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image:
                                                  AssetImage(Categories[index]),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 1,
                        );
                      },
                      itemCount: Categories.length,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 0, right: 250, top: 5),
                    child: Text(
                      'Popular',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),




                  SizedBox(
                    height: 350,
                    child: GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.8,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: <Widget>[

                        GestureDetector(onTap:() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const item_dtails(),));
                        },
                          child: Container(
                            height: 197,
                            width: 162.13,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: const Offset(0, 0),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: Container(
                                    height: 86,
                                    width: 151,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(16),
                                      ),
                                      color: Color(0xffC3B2FF),
                                      image: DecorationImage(
                                        image: AssetImage('assets/home/bg image.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child:
                                    Stack(
                                        children: [Center(child: Image.asset('assets/fruits/orange 1.png')),
                                          const Positioned(top: 5,right: 5,
                                            child: CircleAvatar(radius: 14,backgroundColor: Color(
                                                0x4d7750ff),child: Icon(Icons.favorite_border,color: Color(0xff7750FF),size: 20,),),
                                          )
                                        ],)
                                  ),
                                ),
                                const Positioned(
                                  top: 90, // Adjusted position for the text
                                  left: 5,
                                  child: Text('Orange'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5,top: 40),
                                  child: ListView.separated( scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return const Icon(Icons.star,color: Color(0xffFFCE31),size: 15,);
                                      }, separatorBuilder: (context, index) {
                                        return const SizedBox(width: 2,);
                                      }, itemCount: 5),
                                ),
                                const Positioned(
                                  bottom: 10, // Adjusted position for the text
                                  left: 5,
                                  child: Text('₹ 30/Kg',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: GestureDetector(onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const cart(),));
                                  },
                                    child: Container(
                                      width: 43.58,
                                      height: 41.91,
                                      decoration: const BoxDecoration(
                                        color: Color(0xff7750FF),
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(17),
                                        ),
                                      ),
                                      child: const Icon(Icons.add,color: Colors.white,),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 197,
                          width: 162.13,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: const Offset(0, 0),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Container(
                                  height: 86,
                                  width: 151,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(16),
                                    ),
                                    color: Color(0xffC3B2FF),
                                    image: DecorationImage(
                                      image: AssetImage('assets/home/bg image.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Center(child: Image.asset('assets/veg/tomato 2.png')),
                                      const Positioned(top: 5,right: 5,
                                        child: CircleAvatar(radius: 14,backgroundColor: Color(
                                            0x4d7750ff),child: Icon(Icons.favorite_border,color: Color(0xff7750FF),size: 20,),),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 90, // Adjusted position for the text
                                left: 5,
                                child: Text('Tomato'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5,top: 40),
                                child: ListView.separated( scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return const Icon(Icons.star,color: Color(0xffFFCE31),size: 15,);
                                    }, separatorBuilder: (context, index) {
                                      return const SizedBox(width: 2,);
                                    }, itemCount: 5),
                              ),
                              const Positioned(
                                bottom: 10, // Adjusted position for the text
                                left: 5,
                                child: Text('₹ 40/Kg',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 43.58,
                                  height: 41.91,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff7750FF),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(17),
                                    ),
                                  ),
                                  child: const Icon(Icons.add,color: Colors.white,),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 197,
                          width: 162.13,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: const Offset(0, 0),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Container(
                                  height: 86,
                                  width: 151,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(16),
                                    ),
                                    color: Color(0xffC3B2FF),
                                    image: DecorationImage(
                                      image: AssetImage('assets/home/bg image.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Center(child: Image.asset('assets/fruits/apple.png')),
                                      const Positioned(top: 5,right: 5,
                                        child: CircleAvatar(radius: 14,backgroundColor: Color(
                                            0x4d7750ff),child: Icon(Icons.favorite_border,color: Color(0xff7750FF),size: 20,),),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 90, // Adjusted position for the text
                                left: 5,
                                child: Text('Apple'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5,top: 40),
                                child: ListView.separated( scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return const Icon(Icons.star,color: Color(0xffFFCE31),size: 15,);
                                    }, separatorBuilder: (context, index) {
                                      return const SizedBox(width: 2,);
                                    }, itemCount: 5),
                              ),
                              const Positioned(
                                bottom: 10, // Adjusted position for the text
                                left: 5,
                                child: Text('₹ 95/Kg',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 43.58,
                                  height: 41.91,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff7750FF),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(17),
                                    ),
                                  ),
                                  child: const Icon(Icons.add,color: Colors.white,),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 197,
                          width: 162.13,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: const Offset(0, 0),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Container(
                                  height: 86,
                                  width: 151,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(16),
                                    ),
                                    color: Color(0xffC3B2FF),
                                    image: DecorationImage(
                                      image: AssetImage('assets/home/bg image.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Center(child: Center(child: Image.asset('assets/veg/onian 2.png'))),
                                      const Positioned(top: 5,right: 5,
                                        child: CircleAvatar(radius: 14,backgroundColor: Color(
                                            0x4d7750ff),child: Icon(Icons.favorite_border,color: Color(0xff7750FF),size: 20,),),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 90, // Adjusted position for the text
                                left: 5,
                                child: Text('Onion'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5,top: 40),
                                child: ListView.separated( scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return const Icon(Icons.star,color: Color(0xffFFCE31),size: 15,);
                                    }, separatorBuilder: (context, index) {
                                      return const SizedBox(width: 2,);
                                    }, itemCount: 5),
                              ),
                              const Positioned(
                                bottom: 10, // Adjusted position for the text
                                left: 5,
                                child: Text('₹ 50/Kg',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 43.58,
                                  height: 41.91,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff7750FF),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(17),
                                    ),
                                  ),
                                  child: const Icon(Icons.add,color: Colors.white,),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
          ))
        ],
      ),
    ));
  }
}
