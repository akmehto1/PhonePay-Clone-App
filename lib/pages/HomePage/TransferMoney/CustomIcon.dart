import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {

  final title;
  final path;
  const CustomIcon({super.key,this.title,this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          Container(
            width:48,
            height:48,
            decoration:BoxDecoration(
              color:Color.fromRGBO(95, 37, 159,1),
              borderRadius:BorderRadius.circular(18.0),
            ),
            child:Padding(
              padding:EdgeInsets.all(6),
              child:Image.asset(path),
            )
          ),
          SizedBox(height:1,),
          Text(title,style:TextStyle(fontSize:10),),
        ],
      ),
    );
  }
}
