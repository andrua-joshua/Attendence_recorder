import 'package:attendance_app/route.dart';
import 'package:attendance_app/utils/app_colors.dart';
import 'package:attendance_app/utils/app_styles.dart';
import 'package:attendance_app/utils/custom_widgets.dart';
import 'package:flutter/material.dart';

class AdminsSignInScreen extends StatefulWidget{
  const AdminsSignInScreen({super.key});

  @override
  _adminsSignInScreenState createState()=> _adminsSignInScreenState();
}


class _adminsSignInScreenState extends State<AdminsSignInScreen>{

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _remValue = true;

  @override
  void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        automaticallyImplyLeading: false,
        title: const Text(
          "Administrator SignIn",
          style: AppStyles.titleWhiteTextStyle,
        ),
        centerTitle: true,
      ),  

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10
          ),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 40,),
                      const Text(
                        "Administrator Name",
                        style: AppStyles.normalPrimaryTextStyle,
                      ),
                      const SizedBox(height: 5,),
                      CustomTextInputField(
                        controller: _emailController, 
                        hintText: "example@gmail.com"),
                      SizedBox(height: 20,),
                      const Text(
                        "Password",
                        style: AppStyles.normalPrimaryTextStyle,
                      ),
                      const SizedBox(height: 5,),
                      CustomTextInputField(
                        controller: _passwordController, 
                        hintText: "Please Enter Your Password"),
                      const SizedBox(height:20,),
                      RememberWidget(
                        onChange: (v){
                          setState(() {
                            _remValue = v;
                          });
                        }, 
                        value: _remValue)
                    ],
                  ),
                )),
              const SizedBox(height: 10,),
              ConeredButton(
                bgColor: AppColors.primaryColor, 
                text: "Login", 
                txtColor: Colors.white, 
                onclick: (){
                  Navigator.pushNamed(
                      context, RouteGenerator.adminDashboardScreen);
                }),
              const SizedBox(height: 20,)
            ],
          ),)),   


    );
  }
}