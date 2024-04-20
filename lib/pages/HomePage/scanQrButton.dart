import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScanQrButton extends StatelessWidget {
  final double height;
  final double width;
  const ScanQrButton({super.key,required this.height,required this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child:Container(
        margin:EdgeInsets.all(20.0),
        width:width/3,
        decoration:BoxDecoration(
          color:Color.fromRGBO(101,46,151,1),
          borderRadius:BorderRadius.circular(10.0),
        ),
        height:height/19,
        child:Row(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.qr_code_scanner_sharp,color:Colors.white,size:30,),
            Text("Scan QR",style:TextStyle(color:Colors.white,fontWeight:FontWeight.w800),)
          ],
        ),
      ),
    );
  }
}
