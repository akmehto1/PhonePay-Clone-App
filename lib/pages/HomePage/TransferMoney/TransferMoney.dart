import 'package:flutter/material.dart';
import 'package:phonepat/pages/HomePage/TransferMoney/CustomIcon.dart';

class TransforMoney extends StatefulWidget {
  const TransforMoney({super.key});

  @override
  State<TransforMoney> createState() => _TransforMoneyState();
}

class _TransforMoneyState extends State<TransforMoney> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Container(
      height:170,
      margin:EdgeInsets.all(10),
      decoration:BoxDecoration(
          color:Colors.white,
          borderRadius:BorderRadius.circular(12)
      ),
      child:Column(
        mainAxisAlignment:MainAxisAlignment.end,
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Padding(padding:EdgeInsets.only(left:10),child: Text("Tranfer Money",style:TextStyle(color:Colors.black,fontSize:15),),),
          SizedBox(height:17,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              CustomIcon(path:"assets/images/user.png",title:"To Mobile \n Number",),
              CustomIcon(path:"assets/images/bank.png",title:"To Bank/UPI \n          ID",),
              CustomIcon(path:"assets/images/user.png",title:"To Self \nAccount",),
              CustomIcon(path:"assets/images/bank.png",title:"Check Bank \n  Balance",),
            ],
          ),
          SizedBox(height:12,),
          Container(
            height:30,
            decoration:BoxDecoration(
              color:Colors.grey[200],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child:Row(
              // mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children:[
                SizedBox(width:10,),
                Text("UPI ID:9354983360@ybl",style:TextStyle(color:Colors.grey[700]),),
                SizedBox(width:150,),
                Icon(Icons.arrow_forward_ios,size:17,),
                SizedBox(width:10)
              ],
            ),
          )
        ],
      ),
    );
  }
}
