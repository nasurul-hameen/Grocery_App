import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  List<String> addressType = ['Home', 'Office'];
  List<String> address = [
    'House 10, Road 5, Block J, Malappuram, Kerala-1515',
    'Apartment B3, House 25, Road 10, Kottakkal, Kerala-1313'
  ];
  List<String> paymentIcons = [
    'assets/home/phone pay.png',
    'assets/home/g pay.png'
  ];
  List<String> paymentNames = ['PhonePe', 'GPay'];
  int selectedAddressIndex = -1;
  int selectedPaymentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/home/bg image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            _buildHeader(),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                width: double.infinity,
                color: const Color(0xffE3E1E9),
                child: Column(
                  children: [
                    _buildAddressSelection(),
                    _buildPaymentSelection(),
                  ],
                ),
              ),
            ),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
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
            'Checkout',
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
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
    );
  }

  Widget _buildAddressSelection() {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Address',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              Text(
                'Add new',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff7750FF),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 250,
            child: ListView.separated(
              itemCount: address.length,
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedAddressIndex = index;
                    });
                  },
                  child: _buildAddressCard(index),
                );
              },
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Payment',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              Text(
                'Add new',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff7750FF),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAddressCard(int index) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: selectedAddressIndex == index
                      ? const Color(0xff8B70FB)
                      : Colors.white,
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
              Text(
                addressType[index],
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.edit, size: 15),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 33),
            child: Text(
              address[index],
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentSelection() {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        padding: const EdgeInsets.all(20),
        itemCount: paymentIcons.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedPaymentIndex = index;
              });
            },
            child: _buildPaymentCard(index),
          );
        },
      ),
    );
  }

  Widget _buildPaymentCard(int index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 7,
          ),
        ],
        borderRadius: BorderRadius.circular(17),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              height: 86,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                color: Color(0xffC3B2FF),
                image: DecorationImage(
                  image: AssetImage('assets/home/bg image.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Image.asset(
                  paymentIcons[index],
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 10,
            right: 10,
            child: Column(
              children: [
                Text(
                  paymentNames[index],
                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  '*****12345',
                  style: TextStyle(),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: const ShapeDecoration(
                      shape: CircleBorder(
                          side: BorderSide(color: Colors.black, width: 1))),
                  child: Center(
                    child: Icon(
                      Icons.check_circle,
                      color: selectedPaymentIndex == index
                          ? const Color(0xff8B70FB)
                          : Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      height: 60,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total Price',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0x80000000),
                ),
              ),
              Text(
                '₹ 213',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff7750FF),
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: 180,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xff7750FF),
                image: const DecorationImage(
                  image: AssetImage('assets/home/bg image.png'),
                  fit: BoxFit.cover,
                )),
            child: TextButton(
                onPressed: _showOrderSuccessDialog,
                child: const Text(
                  'Payment',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffEBEBEB)),
                )),
          )
        ],
      ),
    );
  }

  void _showOrderSuccessDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          content: SizedBox(
            height: 395,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/home/Group 18.png', height: 150),
                const SizedBox(height: 20),
                const Text(
                  'Order Successful!',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Your order has been placed successfully.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context); // Replace with tracking logic
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff7750FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Track Order',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: const Color(0xff7750FF)),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                          child: Text(
                            'Go Back',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff7750FF),
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
        );
      },
    );
  }
}
