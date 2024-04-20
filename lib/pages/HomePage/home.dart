import 'package:flutter/material.dart';
import 'package:phonepat/Providers/HomePageProvider.dart';
import 'package:phonepat/pages/HomePage/AppBar/ProfileIcon.dart';
import 'package:phonepat/pages/HomePage/AppBar/SelectLocation.dart';
import 'package:phonepat/pages/HomePage/AppBar/notificationbell.dart';
import 'package:phonepat/pages/HomePage/Insurance/Insurance.dart';
import 'package:phonepat/pages/HomePage/home_body.dart';
import 'package:phonepat/pages/credit/credit.dart';
import 'package:phonepat/pages/history/history.dart';
import 'package:phonepat/pages/insurance/insurance.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {


  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home_body(),
    CreditPage(),
    Insurance_page(),
    HistoryPage(),
    HistoryPage(),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height=size.height;
      return Scaffold(
        backgroundColor: const Color.fromRGBO(229,230,247,1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(94, 37, 146, 1),
          actions: [
            Container(
              width:70,
              margin:EdgeInsets.only(left:10),
              child:ProfileIcon(),
            ),
            SizedBox(width:width*.05),
            const SelectLocation(),
            SizedBox(width:width*.35),
            const Icon(Icons.qr_code_scanner_sharp, color: Colors.white70),
            NotificationBell(),
            SizedBox(width:width*.006),
            const Icon(Icons.question_mark_outlined, color: Colors.white70),
            SizedBox(width:width*.006),
          ],
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromRGBO(94, 37, 146, 1),
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
  }



}
