import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SelectLocation extends StatelessWidget {
  const SelectLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
              bottomAlert(context);
      },
      child:Column(
        mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          SizedBox(height:5,),
          Row(
            children: [
              Text("Home",style:TextStyle(color:Colors.white70,),),
              Icon(Icons.arrow_drop_down_sharp,color:Colors.white70,)
            ],
          ),
          Text("Location",style:TextStyle(color:Color.fromRGBO(166, 128, 209,1),fontSize:10),)
        ],

      ),
    );
  }

  Future bottomAlert(BuildContext context){
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height:200,
          child: Column(
            children: [
              ListTile(
                title: Text('Option 1'),
                onTap: () {
                  // Handle option 1 selection
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Option 2'),
                onTap: () {
                  // Handle option 2 selection
                  Navigator.pop(context);
                },
              ),
              // Add more list items or custom content here
            ],
          ),
        );
      },
    );
  }

}
