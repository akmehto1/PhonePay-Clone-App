import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phonepat/pages/history/scrollbar.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left:6,right:6,top:6),
      child:Column(
        children: [
         GestureDetector(
           child: Container
             (
               padding:const EdgeInsets.all(10.0),
               decoration: BoxDecoration(
                 color:Colors.white,
                 border: Border.all(
                   color: Colors.grey,
                   width: 1.0,
                 ),
                 borderRadius: BorderRadius.circular(12.0),
               ),
               child:const Row(
                 children: [
                   Icon(Icons.search),
                   SizedBox(width:10,),
                   Text("Search by name ,numer or UPI ID",style:TextStyle(fontSize:16,color:Colors.grey),)
                 ],
               )
           ),
         ),
          SizedBox(height:8,),
          const ScrollBar()
        ],
      )
    );
  }
}
