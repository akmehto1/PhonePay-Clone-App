import 'package:flutter/material.dart';
import 'package:phonepat/pages/HomePage/Insurance/imageIconforInsurance.dart';

class Insurance extends StatelessWidget {
  const Insurance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:400,
      margin:const EdgeInsets.all(10),
      decoration:BoxDecoration(
        color:Colors.white,
        borderRadius:BorderRadius.circular(15),

      ),
      child:Column(
        children: [
          const SizedBox(height:5,),
          const Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              const Padding(padding:EdgeInsets.all(5),child:Text("Insurance",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold),),),

              //
            ],),
          Container(
            width:400,
            height:240,
            child: GridView.count(
              primary: false,
              crossAxisSpacing:14,
              mainAxisSpacing: 22,
              crossAxisCount: 4,
              children:[
                const IconImage(path:"assets/images/insurance/motorcycle.png",title:"Bike",),
                const IconImage(path:"assets/images/insurance/car.png",title:"Car",),
                const IconImage(path:"assets/images/insurance/heart-beat.png",title:"Health",),
                const IconImage(path:"assets/images/insurance/renewable.png",title:"Bike",),
                const IconImage(path:"assets/images/insurance/secure-time.png",title:"Accident",),
                const IconImage(path:"assets/images/insurance/renewable.png",title:"Term \n Life",),
                const IconImage(path:"assets/images/insurance/motorcycle.png",title:"International \n Travel",),
                const IconImage(path:"assets/images/next.png",title:"See All",),
                // const  ImageIcon(path:"assets/images/insurance/motorcycle.png",title:"Bike",),
                // const  ImageIcon(,title:"Car",),
                // const CustomImage(,title:"Health",),
                // const CustomImage(,title:"Accident",),
                // const CustomImage(,title:"Term\n Life",),
                // const CustomImage(title:"International \n Travel",),
                // const CustomImage(,title:"Insurance",),
                // const CustomImage(,title:"See All",)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
