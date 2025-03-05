import 'package:flutter/material.dart';

class veggies extends StatefulWidget {
  const veggies({super.key});

  @override
  State<veggies> createState() => _veggiesState();
}

class _veggiesState extends State<veggies> {
  @override
  List veg = [
    'assets/veg/cabbage 1.png',
    'assets/veg/green-chilly 1.png',
    'assets/veg/karrot 1.png',
    'assets/veg/onian 2.png',
    'assets/veg/potato 1.png',
    'assets/veg/tomato 2.png',
    'assets/veg/veluthulli 1.png',
    'assets/veg/vendakka 1.png'
  ];
  List vname = [
    'Cabbage',
    'Green-Chilly',
    'Carrot',
    'Onion',
    'Potato',
    'Tomato',
    'Garlic ',
    'Lady Finger'
  ];

  List vprice = [
    '89',
    '70',
    '165',
    '65',
    '80',
    '44',
    '230',
    '56'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(
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
                      'Fruits',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        right: 18, top: 74, left: 50),
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
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: List.generate(veg.length, (index) {
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
                                        veg[index], fit: BoxFit.fitHeight,),
                                    ),

                                    const Positioned(top: 5,right: 5,
                                      child: CircleAvatar(radius: 14,backgroundColor: Color(
                                          0x4d7750ff),child: Icon(Icons.favorite_border,color: Color(0xff7750FF),size: 20,),),
                                    )
                                  ],
                                ),

                              ),
                            ),
                            Positioned(
                              top: 90, // Adjusted position for the text
                              left: 7,
                              child: Text(vname[index]),
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
                            Positioned(
                              bottom: 10, // Adjusted position for the text
                              left: 5,
                              child: Text('${vprice[index]}/Kg',style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 13),),
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
              )
            ],
          ),
        ));
  }
}
