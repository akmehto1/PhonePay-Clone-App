import 'package:flutter/material.dart';
import 'package:phonepat/utlis/widgets/notification_message.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height=size.height;
    return Scaffold(
      backgroundColor:Colors.grey[300],
      body:Column(
        children: [
          Container(
            height:35,
           decoration:const BoxDecoration(
             color:Color.fromRGBO(168, 83, 50,1),
           ),
          ),
          Container(
            height:50,
            decoration:const BoxDecoration(
              color:Color.fromRGBO(102, 56, 162, 1),
            ),
            child:Row(
              children: [
                const SizedBox(width:15,),
                const Icon(Icons.arrow_back_sharp,color:Colors.white,),
                const SizedBox(width:30,),
                const Text("Notifications",style:TextStyle(color:Colors.white,fontSize:20),),
                const SizedBox(width:10,),
                Container(
                  padding:const EdgeInsets.all(2),
                  decoration:BoxDecoration(
                    color:Colors.white24,
                    borderRadius:BorderRadius.circular(10.0),
                  ),
                  child:const Text("3 New",style:TextStyle(color:Colors.purple),),
                ),
                const SizedBox(width:90,),
                Container(
                  width:20,
                  height:20,
                  decoration:const BoxDecoration(
                  image:DecorationImage(
                    image:AssetImage('assets/images/NotificationPage/question.png')
                  )
                ),)
              ],
            ),
          ),

          //list messgae

          SingleChildScrollView(
            child:Container(
              height:671,
              child:ListView(
                children: [
                  const NotificationMessage(),
                  const NotificationMessage(),
                  const NotificationMessage(),
                  const NotificationMessage(),
                  const NotificationMessage(),
                  const NotificationMessage(),

                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
