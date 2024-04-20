import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final title;
  final path;
  const CustomImage({super.key,this.title,this.path});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child:Container(
        padding:EdgeInsets.all(10),
        decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(20.0)
        ),
        child:Column(
          children: [
            Expanded(child:Container(
              height:40,
              width:40,
              decoration:BoxDecoration(
                image:DecorationImage(
                  image:AssetImage(path),
                )
              ),

            ),),
            Text(title,style:TextStyle(color:Colors.black,fontSize:11,),)
          ],
        ),
      )
    );
  }
}
