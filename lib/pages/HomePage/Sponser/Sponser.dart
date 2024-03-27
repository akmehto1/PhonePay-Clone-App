import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phonepat/pages/HomePage/Sponser/customIcon.dart';
import 'package:phonepat/utlis/CustomImage.dart';

class Sponser extends StatelessWidget {
  const Sponser({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:400,
      margin:EdgeInsets.all(10),
      decoration:BoxDecoration(
        color:Colors.white,
        borderRadius:BorderRadius.circular(15),

      ),
      child:Column(
        children: [
          SizedBox(height:5,),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Padding(padding:EdgeInsets.all(5),child:Text("Sponser",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold),),),

              //button my bills

              //
            ],),
          Container(
            width:400,
            height:100,
            child: GridView.count(
              primary: false,
              crossAxisSpacing: 1,
              mainAxisSpacing: 20,
              crossAxisCount: 4,
              children:[
                CustomImageSponser(path:"assets/images/kotak.jpg",title:"  Kotak 811",),
                CustomImageSponser(path:"assets/images/dream11.jpg",title:"  Dream11",),
                CustomImageSponser(path:"assets/images/kotak.jpg",title:" MyCircle11 ",),
                CustomImageSponser(path:"assets/images/rummy.webp",title:"Rummy",),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
