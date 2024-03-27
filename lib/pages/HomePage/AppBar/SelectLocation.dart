import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectLocation extends StatelessWidget {
  const SelectLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.start,
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        SizedBox(height:5,),
        Row(
          children: [
            Text("Home",style:TextStyle(color:Colors.white70),),
            Icon(Icons.arrow_drop_down_sharp,color:Colors.white70,)
          ],
        ),
        Text("Location",style:TextStyle(color:Color.fromRGBO(166, 128, 209,1),fontSize:10),)
      ],

    );
  }
}
