import 'package:flutter/material.dart';

class GreenNotificationIcon extends StatelessWidget {
int count=0;
GreenNotificationIcon({super.key,required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(2.0),
      decoration:BoxDecoration(
        color:Colors.green,
        borderRadius:BorderRadius.circular(60.0),
      ),
      child:Text("${count}",style:TextStyle(color:Colors.white),),
    );

  }
}
