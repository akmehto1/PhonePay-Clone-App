import 'package:flutter/material.dart';
import 'package:phonepat/Service/HomePageProvider.dart';
import 'package:phonepat/pages/HomePage/AppBar/ProfileIcon.dart';
import 'package:phonepat/pages/HomePage/AppBar/SelectLocation.dart';
import 'package:phonepat/pages/HomePage/Ads/Ads.dart';
import 'package:phonepat/pages/HomePage/Insurance/Insurance.dart';
import 'package:phonepat/pages/HomePage/ReachargeAndBills/RechargeandBills.dart';
import 'package:phonepat/pages/HomePage/Sponser/Sponser.dart';

import 'package:phonepat/pages/HomePage/TransferMoney/TransferMoney.dart';
import 'package:phonepat/pages/HomePage/WalletIcon.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;

    return Consumer<HomePageProvider>(builder:(context,homePageProvider,child){
      return Scaffold(
        backgroundColor: const Color.fromRGBO(229,230,247,1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(102, 56, 162, 1),
          actions: [
            Container(
              width: 60,
              child:ProfileIcon(homePageProvider),
            ),
            const SizedBox(width: 30),
            const SelectLocation(),
            SizedBox(width: width / 3),
            const Icon(Icons.qr_code_scanner_sharp, color: Colors.white70),
            SizedBox(width: width /40),
            Container(
              child: const Stack(
                children: [
                  Icon(Icons.add_alert_sharp, color: Colors.white70),
                  // Positioned(
                  //   right: 0,
                  //   top: -3,
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       color: Colors.green,
                  //       borderRadius: BorderRadius.circular(20),
                  //     ),
                  //     child: Text(
                  //       "10",
                  //       style: TextStyle(color: Colors.white),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(width: width /40),
            const Icon(Icons.question_mark_outlined, color: Colors.white70),
            SizedBox(width: width /40),
          ],
        ),
        body: Stack(
          children: [
            Container(
              height:900,
              child:SingleChildScrollView(
                child: Column(
                  children: [
                    const Ads(),
                    const SizedBox(height:20,),
                    const TransforMoney(),
                    const SizedBox(height:10,),

                    //third widegt
                    Container(
                        child:const Row(
                          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                          children: [
                            WalletCustomIcon(title:"Phone Pay Wallet",icon:Icon(Icons.wallet_travel_outlined,color:Colors.white,size:33,),),
                            WalletCustomIcon(title:"Pay",icon:Icon(Icons.paypal,color:Colors.white,size:33,),),
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
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromRGBO(102, 56, 162, 1),
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Credit',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Insurance',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.center_focus_weak_sharp),
              label: 'Wealth',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white, // Color for the selected item
          unselectedItemColor: Colors.white70, // Color for unselected items
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          elevation: 0, // Removes the default shadow
        ),


      );
    });
  }



}
