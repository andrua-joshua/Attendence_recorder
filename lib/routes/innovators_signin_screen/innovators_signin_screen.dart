import 'package:attendance_app/route.dart';
import 'package:attendance_app/utils/app_colors.dart';
import 'package:attendance_app/utils/app_styles.dart';
import 'package:attendance_app/utils/custom_widgets.dart';
import 'package:flutter/material.dart';

class InnovatorsSignInScreen extends StatefulWidget{
  const InnovatorsSignInScreen({super.key});

  @override
  _innovatorsSignInScreenState createState()=> _innovatorsSignInScreenState();
}


class _innovatorsSignInScreenState extends State<InnovatorsSignInScreen>{

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
          "Innovators SignIn",
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
                        "Hub Innovator Name",
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
                      context, RouteGenerator.userProfileScreen, arguments: false);
                }),
              const SizedBox(height: 20,),
              // SizedBox(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       const Text(
              //         "Don't have an account ?",
              //         style: AppStyles.normalGreyTextStyle,),
              //       TextButton(
              //         onPressed: (){
              //           Navigator.pushNamed(
              //         context, RouteGenerator.innovatorSignUpScreen);
              //         }, 
              //         child: Text(
              //         "Sign Up",
              //         style: AppStyles.normalPrimaryTextStyle,))
              //     ],
              //   ),
              // ),
              // const SizedBox(height: 20,)
            ],
          ),)),   


    );
  }
}