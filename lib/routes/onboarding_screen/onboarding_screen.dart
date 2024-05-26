import 'package:attendance_app/route.dart';
import 'package:attendance_app/utils/app_colors.dart';
import 'package:attendance_app/utils/app_styles.dart';
import 'package:attendance_app/utils/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnboardingScreen extends StatelessWidget{
  const OnboardingScreen({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        automaticallyImplyLeading: false,
        title: const Text(
          "Innovation Hub",
          style: AppStyles.titleWhiteTextStyle,
        ),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child:Column(
          children: [
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedCustomButton(
                  borderColor: AppColors.primaryColor, 
                  text: "Administrator", 
                  onclick: (){
                    Navigator.pushNamed(
                      context, RouteGenerator.adminLoginScreen);
                  },
                  txtColor: AppColors.primaryColor),
                SizedBox(height: 20,),
                ConeredButton(
                  bgColor: AppColors.primaryColor, 
                  text: "Innovator", 
                  onclick: (){
                    Navigator.pushNamed(
                      context, RouteGenerator.innovatorSigninScreen);
                  },
                  txtColor: Colors.white)
              ],
            )),
            Center(
              child:Text(
              "Uganda Innovates",
              style: AppStyles.normalGreyTextStyle,
            )),
            SizedBox(height: 20,)
          ],
        ))),
    );
  }
}