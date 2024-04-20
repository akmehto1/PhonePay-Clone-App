import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Insurance_page extends StatefulWidget {
  const  Insurance_page({super.key});

  @override
  State<Insurance_page> createState() => _IsuranceState();
}

class _IsuranceState extends State<Insurance_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          first_widget()
        ],
      ),
    );
  }


  Widget first_widget(){
    return Container(
      child:Row(
        children: [
            Container(
              child:Column(
                children: [
                  Text("Get Started With Your Health"),
                  Text("Health Tracker"),
                  MaterialButton(
                    onPressed: () {
                      // Handle button press
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                    child:Container(
                      width:100,
                      
                    ),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }

}
