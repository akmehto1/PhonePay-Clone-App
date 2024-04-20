import 'package:flutter/material.dart';


Widget ProfileIcon(){
    return Stack(
      children: [
       Container(
          height:45,
          width:45,
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(10.0),
            image:DecorationImage(
              fit:BoxFit.cover,
              image:AssetImage('assets/images/profile2.png'),
            )
          ),
        ),
        Positioned(
            bottom:0,
            right:14,
            child:Container(
              width:25,
              height:30,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(20.0),
                image:DecorationImage(
                  image:AssetImage('assets/images/india.png')
                )
              ),

            ))
      ],
    );
}
