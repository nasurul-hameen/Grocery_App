import 'package:flutter/material.dart';
import 'package:grocery_app/ui/cart.dart';

class item_dtails extends StatefulWidget {
  const item_dtails({super.key});

  @override
  State<item_dtails> createState() => _item_dtailsState();
}

class _item_dtailsState extends State<item_dtails> {
  @override
  List ditem = [
    'assets/veg/potato 1.png',
    'assets/veg/tomato 2.png',
    'assets/fruits/apple.png',
    'assets/fruits/banana.png',
  ];
  List dname = ['Potato', 'Tomato', 'Apple ', 'Banana'];

  List dprice = [
    '89',
    '70',
    '165',
    '80',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/home/bg image.png'))),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 74),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const CircleAvatar(
                      radius: 20,
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 18,
                        color: Color(0xff7750FF),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 80, left: 50),
                  child: Text(
                    'Details',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0),
              child: Image.asset(
                'assets/fruits/orange 1.png',
                width: 200,
                height: 200,
              ),
            ),


            Container(color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              const Text(
                  'Fresh Orange',
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SizedBox(
                    height: 15,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const Icon(
                            Icons.star,
                            color: Color(0xffFFCE31),
                            size: 20,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 2,
                          );
                        },
                        itemCount: 5),
                  ),
              ),
              const Row(
                  children: [
                    Text(
                      '₹ 90/kg',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 22),
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Color(0xffD9D9D9),
                      child: Center(
                          child: Icon(
                            Icons.remove,
                            size: 20,
                            color: Color(0x80000000),
                          )),
                    ),
                    Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text(
                        '1 kg',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0x82000000)),
                      ),
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Color(0xff7750FF),
                      child: Center(
                          child: Icon(
                            Icons.add,
                            size: 20,
                            color: Color(0xffEBEBEB),
                          )),
                    )
                  ],
              ),
                      const SizedBox(height: 10,)
            ],),
                )),


            Expanded(
                child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top:5,bottom: 10),
                        child: Text(
                          'Product Details',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20.5),
                        ),
                      ),
                      const Text(
                        'Oranges are a citrus fruit that are known for their juicy flesh  and vitamin C content.Oranges are a good source of vitamin C,which is an antioxidant that may help lower the risk of heart disease and cancer. They also contain fiber, which can help you feel full and may improve how your body responds to insulin.',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Related Products',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20.5),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: 0.8,
                          padding: const EdgeInsets.all(20),
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          children: List.generate(ditem.length, (index) {
                            return Container(
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
                                          image: AssetImage(
                                              'assets/home/bg image.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Center(
                                            child: Image.asset(
                                              ditem[index],
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                          const Positioned(
                                            top: 5,
                                            right: 5,
                                            child: CircleAvatar(
                                              radius: 14,
                                              backgroundColor:
                                                  Color(0x4d7750ff),
                                              child: Icon(
                                                Icons.favorite_border,
                                                color: Color(0xff7750FF),
                                                size: 20,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 90,
                                    // Adjusted position for the text
                                    left: 7,
                                    child: Text(dname[index]),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 5, top: 60),
                                    child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return const Icon(
                                            Icons.star,
                                            color: Color(0xffFFCE31),
                                            size: 15,
                                          );
                                        },
                                        separatorBuilder: (context, index) {
                                          return const SizedBox(
                                            width: 2,
                                          );
                                        },
                                        itemCount: 5),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    // Adjusted position for the text
                                    left: 5,
                                    child: Text(
                                      '${dprice[index]}/Kg',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13),
                                    ),
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
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),



            Container(
              width: double.infinity,color: Colors.white,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Column(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Prize',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: Color(0x80000000)),
                        ),
                        Text(
                          '₹ 90/kg',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                              color: Color(0xff7750FF)),
                        ),
                      ],
                    ),
                    const Spacer(),
                    GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const cart(),));
                    },
                      child: Container(
                        width: 200,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color(0xff7750FF),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                            child: Text(
                              'Add to Cart',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffEBEBEB)),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
