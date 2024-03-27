import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomImageSponser extends StatelessWidget {
  final title;
  final path;
  const CustomImageSponser({super.key,this.title,this.path});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child:Container(
          padding:EdgeInsets.all(10),
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
