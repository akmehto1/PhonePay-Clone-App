import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField onChanged Example',
      home: PaymentPage(),
    );
  }
}

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String amount = "";
  bool paymentStart = false; // Declare as instance variable

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 230, 247, 1),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => const PaymentPage()),
            );
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        actions: [
          actionBar(width),
        ],

        backgroundColor: const Color.fromRGBO(94, 37, 146, 1),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          mainContainer(amount),
          Container(
            child:Align(
              child:Text("PROCEED TO  PAY",style:TextStyle(color:!paymentStart?Colors.grey[800]:Colors.white,),),
            ),
            height: 55,
            width:width,
            color: paymentStart ?Color.fromRGBO(94, 37, 146, 1): Colors.grey[400],
          ),
        ],
      ),
    );
  }

  Widget mainContainer(String amount) {
    return Container(
      margin:EdgeInsets.all(9.0),
      decoration:BoxDecoration(
        borderRadius:BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(0),

      child: Column(
        children: [
          Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/kotak.jpg'),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("********3360",style:TextStyle(fontWeight:FontWeight.w700),),
                    Text("Banking name:ABHISHEK.......",style:TextStyle(color:Colors.grey[800]),),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "View History",
                    style: TextStyle(color:const Color.fromRGBO(94, 37, 146, 1),fontWeight:FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 350,
            height: 70,

            child: TextField(
              onChanged: (value) {
                setState(() {
                  print(value);
                  print("this is done here please check one gain");
                  print(paymentStart);
                  if(value.length>=1){
                    paymentStart=true;
                  }
                  else paymentStart=false;

                });
              },
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  fontSize: 28.0,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(),
                hintText: 'Enter Amount',
                focusColor: Colors.blue,
                prefixIcon: Icon(Icons.currency_rupee, size: 30),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 350,
            height: 100,
            child: TextField(
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  fontSize: 17.0,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(),
                hintText: 'Add your message (optional)',
                focusColor: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget actionBar(width) {
    return Container(
      width: width / 1.2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Pay", style: TextStyle(color: Colors.white)),
          Container(
            width: width / 2,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.cast, color: Colors.white),
                Icon(Icons.cloud_off, color: Colors.white),
                Icon(Icons.star_border_sharp, color: Colors.white),
                Icon(Icons.question_answer_sharp, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
