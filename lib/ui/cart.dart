import 'package:flutter/material.dart';
import 'package:grocery_app/ui/Payment.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  List citem = [
    'assets/fruits/strawberry.png',
    'assets/fruits/mango 1.png',
    'assets/veg/tomato 2.png'
  ];
  List cname = ['Strawberry', 'Mango', 'Tomato'];
  List cprice = ['230', '120', '40'];
  List ccat = ['Fruits', 'Veggies', 'Fruits'];

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
                  padding: const EdgeInsets.only(left: 18, top: 50),
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
                  padding: EdgeInsets.only(top: 56, left: 50),
                  child: Text(
                    'Cart',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 18, top: 50, left: 50),
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
              height: 20,
            ),
            Expanded(
              child: Container(
                color: const Color(0xffE3E1E9),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, top: 10),
                        child: SizedBox(
                          height: 350,
                          child: ListView.separated(
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Container(
                                    height: 90,
                                    width: 350,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(9)),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Container(
                                            width: 77.5,
                                            height: 74.5,
                                            decoration: BoxDecoration(
                                                color: const Color(0xffC3B2FF),
                                                borderRadius:
                                                    BorderRadius.circular(7.3)),
                                            child: Image.asset(citem[index]),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                cname[index],
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16,
                                                    color: Colors.black),
                                              ),
                                              Text(ccat[index],
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 16,
                                                      color:
                                                          Color(0x80000000))),
                                              Text('${cprice[index]}/Kg',
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16,
                                                      color:
                                                          Color(0xff7750FF))),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        const CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Color(0xffD9D9D9),
                                          child: Center(
                                              child: Icon(
                                            Icons.remove,
                                            size: 20,
                                            color: Color(0x80000000),
                                          )),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5.0),
                                          child: Text(
                                            '1 kg',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0x82000000)),
                                          ),
                                        ),
                                        const CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Color(0xff7750FF),
                                          child: Center(
                                              child: Icon(
                                            Icons.add,
                                            size: 20,
                                            color: Color(0xffEBEBEB),
                                          )),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return const SizedBox(
                                  height: 15,
                                );
                              },
                              itemCount: citem.length),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          width: 350,
                          height: 248,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 334,
                                  height: 52,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffE3E1E9),
                                      borderRadius: BorderRadius.circular(27)),
                                  child: Row(
                                    children: [
                                      const Center(
                                        child: SizedBox(
                                          width: 150,
                                          child: TextField(
                                            textAlign: TextAlign.center,
                                            autofocus: false,
                                            decoration: InputDecoration(
                                              hintText: 'Enter Promo Code',
                                              focusColor: Colors.transparent,
                                              border: InputBorder
                                                  .none, // Disable the divider
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        width: 102,
                                        height: 52,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/home/bg image.png'),
                                                fit: BoxFit.cover),
                                            color: Color(0xff805EFD),
                                            borderRadius:
                                                BorderRadius.horizontal(
                                                    right:
                                                        Radius.circular(27))),
                                        child: const Center(
                                            child: Text(
                                          'Apply',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        )),
                                      ),
                                    ]
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 14,vertical: 10),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    Text('Sub Total',style: TextStyle(fontSize: 16.5,fontWeight: FontWeight.w500,color: Color(0x4d000000)),),
                                    Text('₹193.0',style: TextStyle(fontSize: 16.5,fontWeight: FontWeight.w500,color: Color(0xff000000)),),

                                  ],),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 14,vertical: 0),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    Text('Delivery Charges',style: TextStyle(fontSize: 16.5,fontWeight: FontWeight.w500,color: Color(0x4d000000)),),
                                    Text('₹20.0',style: TextStyle(fontSize: 16.5,fontWeight: FontWeight.w500,color: Color(0xff000000)),),

                                  ],),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 14,vertical: 10),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    Text('Discount',style: TextStyle(fontSize: 16.5,fontWeight: FontWeight.w500,color: Color(0x4d000000)),),
                                    Text('₹0.0',style: TextStyle(fontSize: 16.5,fontWeight: FontWeight.w500,color: Color(0xff000000)),),

                                  ],),
                                ),


                                const SizedBox(child: Divider(thickness: 1,color: Color(
                                    0x4d000000),)),


                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 14,vertical: 10),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    Text('Final Total',style: TextStyle(fontSize: 16.5,fontWeight: FontWeight.w500,color: Color(0x4d000000)),),
                                    Text('₹ 213.0',style: TextStyle(fontSize: 16.5,fontWeight: FontWeight.w500,color: Color(0xff000000)),),

                                  ],),
                                ),]
                                ),
                            ),
                          ),
                        ),

                    ]
                      ),
                  ),
                ),
              ),
            SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Container(
                width: double.infinity,
                color: Colors.white,
                height: 58,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Price',
                                style: TextStyle(
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0x4d000000),
                                ),
                              ),
                              Text(
                                '₹ 213',
                                style: TextStyle(
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff7750FF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7.0,right: 10),
                          child: GestureDetector(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentScreen(),));
                          },
                            child: Container(
                              width: 200,
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color(0xff7750FF),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Center(
                                child: Text(
                                  'Check Out',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffEBEBEB),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
