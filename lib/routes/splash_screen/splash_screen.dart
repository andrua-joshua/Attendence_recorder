import 'package:attendance_app/route.dart';
import 'package:attendance_app/routes/splash_screen/widgets/splash_screen_widgets.dart';
import 'package:attendance_app/utils/app_colors.dart';
import 'package:attendance_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SplashScreeen extends StatelessWidget{
  const SplashScreeen({super.key});


  @override
  Widget build(BuildContext context){
    Future.delayed(const Duration(seconds: 5)).then((value) {
      Navigator.pushNamed(context, RouteGenerator.onboardingScreen);
    },);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
      ),

      body: const SafeArea(
        child: Column(
          children: [
            Expanded(child: Center(
              child: Image(
                height: 150,
                image: AssetImage("assets/images/logo.jpeg")),
            )),
           BenchMarkWidget(),
          SizedBox(height: 10,)
          ],
        )),
    );
  }

}