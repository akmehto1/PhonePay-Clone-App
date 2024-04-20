


import 'package:flutter/material.dart';
import 'package:phonepat/pages/Notification/notification.dart';
import 'package:phonepat/utlis/widgets/green_notification_icon.dart';

class NotificationBell extends StatefulWidget {
   const NotificationBell({super.key});
  @override
  State<NotificationBell> createState() => _notficationbellState();
}

class _notficationbellState extends State<NotificationBell> {
  @override
  Widget build(BuildContext context) {
    return Container(

   child:Stack(
       children: [
         IconButton(onPressed:(){
           Navigator.push(context,
               MaterialPageRoute(builder:(context) => const NotificationPage())
           );
         },icon:Icon(Icons.notifications_none_outlined,color:Colors.white70,)),
         Positioned(
             right:4,
             top:2,
             child:GreenNotificationIcon(count:10))
       ],
   )
    );
  }
}
