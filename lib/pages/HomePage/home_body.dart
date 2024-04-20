import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phonepat/pages/HomePage/Ads/Ads.dart';
import 'package:phonepat/pages/HomePage/Insurance/Insurance.dart';
import 'package:phonepat/pages/HomePage/ReachargeAndBills/RechargeandBills.dart';
import 'package:phonepat/pages/HomePage/Sponser/Sponser.dart';
import 'package:phonepat/pages/HomePage/TransferMoney/TransferMoney.dart';
import 'package:phonepat/pages/HomePage/WalletIcon.dart';
import 'package:phonepat/pages/HomePage/scanQrButton.dart';
import 'package:phonepat/pages/payment/paymentPage.dart';

class Home_body extends StatefulWidget {
  const Home_body({super.key});
  @override
  State<Home_body> createState() => _Home_bodyState();
}

class _Home_bodyState extends State<Home_body> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height=size.height;

    return Stack(
      children: [
        Container(
          height:height,
          child:SingleChildScrollView(
            child: Column(
              children: [
                const Ads(),
                SizedBox(height:height*.01),
                const TransforMoney(),
                SizedBox(height:height*.01),
                //third widegt
                Container(
                    child:Row(
                      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                      children: [
                        WalletCustomIcon(title:"Phone Pay Wallet",icon:Icon(Icons.wallet_travel_outlined,color:Colors.white,size:33,),),
                        SizedBox(width:width*.009),
                        WalletCustomIcon(title:"Pay",icon:Icon(Icons.paypal,color:Colors.white,size:33,),),
                        SizedBox(width:width*.009),
                        WalletCustomIcon(title:"Refer",icon:Icon(Icons.adf_scanner_rounded,color:Colors.white,size:33,),),
                      ],
                    )
                ),

                //reacharge
                const RechargeAndBills(),
                const Sponser(),
                const Insurance()
                // CustomIcon()
              ],
            ),
          ),
        ),
        Align(
          alignment:Alignment.bottomCenter,
          child:GestureDetector(
            onTap:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PaymentPage()),
              );
            },
            child:ScanQrButton(height:height, width: width),
          )
        )
      ],
    );
  }
}
