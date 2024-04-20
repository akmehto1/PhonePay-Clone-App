import 'package:flutter/material.dart';
import 'package:phonepat/models/transaction.dart';
import 'package:phonepat/pages/history/transacrionpage/icon_image.dart';

class TransactionPage extends StatefulWidget {
  final Transaction  userTransaction;
  const TransactionPage({super.key,required this.userTransaction});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {

  bool hide=true;
  @override
  Widget build(BuildContext context) {
    Transaction userTransaction_1 = widget.userTransaction;

    return Scaffold(
       backgroundColor:Colors.grey[300],
        body:Column(
          children: [

            Container(height:50,color:Colors.green[600],),
            //nagivation  bar
            Container(
              color:Colors.green,
              height:50,
              child:Row(
                children: [
                  IconButton(onPressed:(){}, icon:const Icon(Icons.arrow_back_sharp,color:Colors.white70,)),
                   const SizedBox(width:15,),
                    Column(
                     mainAxisAlignment:MainAxisAlignment.center,
                     crossAxisAlignment:CrossAxisAlignment.start,
                     children: [
                       Text("Transaction Succesful",style:TextStyle(fontSize:15,color:Colors.white),),
                       Text("${userTransaction_1.time} on ${userTransaction_1.receive_date}",style:TextStyle(fontSize:11,color:Colors.white70),)
                     ],
                   )
                ],
              ),

            ),
            //main
          Container(
            // height:500,
            decoration:BoxDecoration(
                color:Colors.white,
              borderRadius:BorderRadius.circular(10.0)
            ),
            padding:const EdgeInsets.only(left:10.0,right:12,top:8),
            margin:const EdgeInsets.all(10.0),
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                const Text("Received from",style:TextStyle(fontWeight:FontWeight.bold),),
                const SizedBox(height:15,),

                nameAndRuppee(userTransaction_1.amount),
                const SizedBox(height:15,),
                Container(height:1,color:Colors.grey[200],),
                const SizedBox(height:12,),
                Row(
                  children:[
                    Text("Banking Name   : ${userTransaction_1.name}",style:TextStyle(fontSize:12),),
                    SizedBox(width:2,),
                    Icon(Icons.print,color:Colors.red,size:18,),
                  ],
                ),
                const SizedBox(height:12,),
                Container(height:1,color:Colors.grey[200],),
                
                transaction_details(userTransaction_1.amount,userTransaction_1.transaction_id),


              ],
            ),
          ),
            
          Container(
            margin:const EdgeInsets.all(10.0),
            padding:const EdgeInsets.all(10.0),
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(10.0),
              color:Colors.white
            ),
            child:Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child:const Row(
                    children: [
                      Icon(Icons.question_answer),
                      SizedBox(width:15,),
                      Text("Contact PhonePe Support"),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios)
              ],
            ),
          )  


            
            
            
          ],
        ),
    );
  }


  Widget nameAndRuppee(String amount){
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: [
        //images
        Container(
          child:Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration:BoxDecoration(
                  color:Colors.deepPurple,
                  borderRadius:BorderRadius.circular(10),
                ),
                child:const Icon(Icons.arrow_back_ios_new_outlined,color:Colors.white,),
              ),
              const SizedBox(width:14.0,),
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  const Text("Received from"),
                  Text("9643884388",style:TextStyle(color:Colors.grey[700],fontSize:13),)],),
            ],
          ),
        ),
        Text(amount,style:const TextStyle(color:Colors.black,fontWeight:FontWeight.bold),)
      ],
    );
  }
  
  Widget  transaction_details(String amount,String transactions){
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(Icons.padding_outlined,),
                  Text("Transfer Details")
                ],
              ),
              IconButton(onPressed:(){
                setState(() {
                  hide=!hide;
                });
              }, icon:hide?const Icon(Icons.arrow_drop_up):const Icon(Icons.arrow_drop_down_sharp)),
            ],
          ),

        hide?more_details(amount,transactions):const SizedBox(),
        const SizedBox(height:20,),
        const Row(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [
            name_image(title:"Send Money",icons:Icon(Icons.arrow_upward_rounded,color:Colors.white,),),
            name_image(title:"Check Balance",icons:Icon(Icons.food_bank_outlined,color:Colors.white,),),
            name_image(title:"View History",icons:Icon(Icons.history_toggle_off_outlined,color:Colors.white,),),
            name_image(title:"Share Receipt",icons:Icon(Icons.receipt,color:Colors.white,),),
          ],
        ),
        const SizedBox(height:14,),
      ],
    );
  }



  Widget more_details(String amount,String transactions){
    return Container(
      child:Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Text("Transaction ID",style:TextStyle(color:Colors.grey[600],fontSize:12),),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Text(transactions),
              const Icon(Icons.copy,color:Colors.blue,size:14,),
            ],),
          const SizedBox(height:10,),
          const Text("Credited to"),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child:Row(
                  children:[
                    Container(
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.start,
                        children: [
                          Container(
                            height:30,
                            width:30,
                            decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(30.0),
                              image:DecorationImage(
                                image:AssetImage("assets/images/transactions/kotak.png"),
                              ),
                            ),
                          ),

                          SizedBox(width:14,),
                          Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Text("XXXXXXXXX7619"),
                              SizedBox(height:5,),
                              Text("UTR:446236281134")
                            ],
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),

              Column(
                crossAxisAlignment:CrossAxisAlignment.end,
                children: [Text(amount),
                  const SizedBox(height:5,),
                  const Icon(Icons.copy,size:13,color:Colors.blue,),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
  
}
