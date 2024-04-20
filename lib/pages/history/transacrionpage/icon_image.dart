import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class name_image extends StatelessWidget {
  final String title;
  final Icon icons;
  const name_image({super.key,required this.icons,required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration:BoxDecoration(
            color:Colors.deepPurple,
            borderRadius:BorderRadius.circular(10),
          ),
          child:icons,
        ),
        Text("share")
      ],
    );
  }
}
