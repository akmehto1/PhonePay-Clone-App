import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationMessage extends StatelessWidget {
  const NotificationMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height=size.height;

    return Container(
      height:150,
      padding:EdgeInsets.only(top:14),
      margin:EdgeInsets.symmetric(horizontal:10.0,vertical:5.0),
      decoration:BoxDecoration(
      color:Colors.white,
        borderRadius:BorderRadius.circular(15.0)
      ),

      child:Row(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Container(
            width:width/5,
            height:50,
            decoration:BoxDecoration(
              image:DecorationImage(
                image:AssetImage('assets/images/next.png')
              )
            ),
          ),
          Expanded(child:Container(
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text("This data is dummy you have to measure about this time",style:TextStyle(fontSize:17,color:Colors.grey[700]),),
                SizedBox(height:10,),
                Text("Click here to accept")
              ],
            ),
            ),),
          Container(
            child:IconButton(icon:Icon(Icons.add),onPressed:(){},),
            width:width/5,
            ),
        ],
      ),
    );
  }
}
