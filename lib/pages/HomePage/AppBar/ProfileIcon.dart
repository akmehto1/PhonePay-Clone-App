import 'package:flutter/material.dart';
import 'package:phonepat/Service/HomePageProvider.dart';

Widget ProfileIcon(homePageProvider){
    return Stack(
      children: [
        !homePageProvider.pick_profile_image?Icon(Icons.account_circle,color:Colors.white70,size:55,):Container(
          height:20,
          width:30,
          decoration:BoxDecoration(
            image:DecorationImage(
              image:AssetImage('assets/images/profile.jpg'),
            )
          ),
        ),
        Positioned(
            bottom:0,
            right:0,
            child:Container(
              width:25,
              height:25,
              child:Image.asset('assets/images/india.png',),
            ))
      ],
    );
}
