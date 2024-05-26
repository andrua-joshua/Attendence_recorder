import 'package:attendance_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class BenchMarkWidget extends StatelessWidget{
  const BenchMarkWidget({super.key});


  @override
  Widget build(BuildContext context){
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 15,
          foregroundImage: AssetImage("assets/images/sphere.png"),
        ),
        SizedBox(width: 10,),
        Text("Cognosphere Dynamics", style: AppStyles.normalGreyBoldTextStyle,)
      ],
    );
  }
}