

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phonepat/models/transaction.dart';
import 'package:phonepat/pages/history/transacrionpage/transaction.dart';

class Item extends StatelessWidget {
  // final History history;
final  Transaction  usertransaction;
  final String name;
  final String image;
  final bool receive;
  final String amount;
  final int index;
  final String receive_date;


   const Item({super.key,required this.usertransaction,required this.name, required this.image, required this.receive, required this.amount, required this.index, required this.receive_date});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>TransactionPage(userTransaction:usertransaction)),
        );
      },
      child: Container(
        margin:EdgeInsets.only(top:12),
        child:Column(
          children: [
            //upper
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                //images
                Container(
                  child:Row(
                    children: [
                      Container(
                        child:ClipOval(
                          child:Image.asset(image, // Replace with your image URL or asset
                            fit: BoxFit.cover, // This is to ensure the image covers the circle
                            width: 40.0, // Width of the circle
                            height: 40.0, // Height of the circle, should be equal to width for a perfect circle
                          ),
                        ),
                      ),
                      SizedBox(width:14.0,),
                      Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                        Text("Received from"),
                          Text(name,style:TextStyle(color:Colors.grey[700],fontSize:13),)],),
                    ],
                  ),
                ),
                Text("₹${amount}",style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold),)
              ],
            ),
            //down
            SizedBox(height:10.0,),
            Container(
              child:Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children:[
                  Text(receive_date,style:TextStyle(color:Colors.grey[800],fontSize:10),),
                  Row(
                    children: [Text("Credited to"),
                      SizedBox(width:5.0,),
                      Container(
                      width:20,
                      height:20,
                      decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10.0),
                          image:DecorationImage(image:AssetImage("images/transactions/kotak.png"))
                      ),
                    ),],
                  )
                ],
              ),
            ),
            SizedBox(height:10,),
            Container(
              height: 1.0, // Set the height of the line

              decoration:BoxDecoration(
                color: Colors.grey[200],
              ),
              // Set the color of the line to grey
            )
          ],
        ),
      ),
    );
  }
}
