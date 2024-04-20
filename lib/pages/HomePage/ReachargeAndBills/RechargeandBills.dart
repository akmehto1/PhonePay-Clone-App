import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phonepat/utlis/widgets/CustomImage.dart';

class RechargeAndBills extends StatefulWidget {
  const RechargeAndBills({super.key});

  @override
  State<RechargeAndBills> createState() => _RechargeAndBillsState();
}

class _RechargeAndBillsState extends State<RechargeAndBills> {
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

            Padding(padding:EdgeInsets.all(5),child:Text("Recharge and bills",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold),),),

              //button my bills
              Container(
              margin:EdgeInsets.only(right:15),
              width:70,
              height:20,
              decoration:BoxDecoration(
                color:Colors.grey.withOpacity(.2),
                borderRadius:BorderRadius.circular(10)
              ),
              child:Padding(
                padding:EdgeInsets.only(left:15,top:2),
                child:Text("My Bills",style:TextStyle(fontSize:12,color:Colors.grey),),
              ),
            ),
            //
          ],),
          Container(
            width:400,
            height:240,
            child: GridView.count(
              primary: false,
              crossAxisSpacing: 1,
              mainAxisSpacing: 20,
              crossAxisCount: 4,
              children:[
                CustomImage(path:"assets/images/smartPhone.png",title:"  Mobile\nRecharge",),
                CustomImage(path:"assets/images/toll.png",title:"  Buy\nFastTag",),
                CustomImage(path:"assets/images/signal.png",title:"  Buy\nFastTag",),
                CustomImage(path:"assets/images/light.png",title:"  Buy\nFastTag",),
                CustomImage(path:"assets/images/flow.png",title:"  Mobile\nRecharge",),
                CustomImage(path:"assets/images/tax.png",title:"  Buy\nFastTag",),
                CustomImage(path:"assets/images/reill.png",title:"  Buy\nFastTag",),
                CustomImage(path:"assets/images/next.png",title:"  Buy\nFastTag",),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
