import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WalletCustomIcon extends StatelessWidget {
final title;
final Icon icon;
  const WalletCustomIcon({super.key,this.title,required this.icon});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height=size.height;
    return Container(
      width:width*.32,
      height:70,
      decoration:BoxDecoration(
          color:Color.fromRGBO(88, 138, 220,1),
        borderRadius:BorderRadius.circular(10.0)
      ),
      child:Column(
        crossAxisAlignment:CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height:10,),
          icon,
          Text(title,style:TextStyle(color:Colors.white,fontSize:10),)
        ],
      ),
    );
  }
}
