import 'package:attendance_app/route.dart';
import 'package:attendance_app/utils/app_colors.dart';
import 'package:attendance_app/utils/app_styles.dart';
import 'package:attendance_app/utils/custom_widgets.dart';
import 'package:flutter/material.dart';

class CompanyRegistrationScreen extends StatefulWidget{
  final bool isEdit;
  const CompanyRegistrationScreen({super.key, required this.isEdit});

  @override
  _companyRegistrationScreenState createState()=> _companyRegistrationScreenState();
}


class _companyRegistrationScreenState extends State<CompanyRegistrationScreen>{

  final TextEditingController _productNameController = TextEditingController();
  final TextEditingController _companyNameController = TextEditingController();
  final TextEditingController _registrationNumberController = TextEditingController();
  final TextEditingController _industryController = TextEditingController();
  final TextEditingController _teamCompositionController = TextEditingController();
  final TextEditingController _founderNameController = TextEditingController();
  final TextEditingController _founderEmailController = TextEditingController();
  final TextEditingController _founderRoleController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repeatPasswordController = TextEditingController();

  bool _remValue = true;

  @override
  void dispose(){
    _productNameController.dispose();
    _companyNameController.dispose();
    _registrationNumberController.dispose();
    _industryController.dispose();
    _teamCompositionController.dispose();
    _founderEmailController.dispose();
    _founderNameController.dispose();
    _founderRoleController.dispose();
    _phoneNumberController.dispose();
    _passwordController.dispose();
    _repeatPasswordController.dispose();
    super.dispose();
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: ()=> Navigator.pop(context), 
          icon: const Icon(Icons.arrow_back, color:  Colors.white,)),
        title: Text(widget.isEdit?"Edit Profile": "Register Innovator",
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
                      Container(
                        constraints: const BoxConstraints.expand(height: 300,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.smoothWhite,
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage("assets/images/sphere_logo.png"))
                        ),
                      ),
                      SizedBox(height: 20,),
                      const Text(
                        "Company Name",
                        style: AppStyles.normalPrimaryTextStyle,
                      ),
                      const SizedBox(height: 5,),
                      CustomTextInputField(
                        controller: _companyNameController, 
                        hintText: "Company name"),
                      
                      SizedBox(height: 20,),
                      const Text(
                        "Flagship Product Name",
                        style: AppStyles.normalPrimaryTextStyle,
                      ),
                      const SizedBox(height: 5,),
                      CustomTextInputField(
                        controller: _productNameController, 
                        hintText: "Product name"),

                      SizedBox(height: 20,),
                      const Text(
                        "Registration Number",
                        style: AppStyles.normalPrimaryTextStyle,
                      ),
                      const SizedBox(height: 5,),
                      CustomTextInputField(
                        controller: _registrationNumberController, 
                        hintText: "Registration Number"),

                      SizedBox(height: 20,),
                      const Text(
                        "Industry",
                        style: AppStyles.normalPrimaryTextStyle,
                      ),
                      const SizedBox(height: 5,),
                      CustomTextInputField(
                        controller: _industryController, 
                        hintText: "Industry"),

                      SizedBox(height: 20,),
                      const Text(
                        "Team Composition",
                        style: AppStyles.normalPrimaryTextStyle,
                      ),
                      const SizedBox(height: 5,),
                      CustomTextInputField(
                        controller: _teamCompositionController, 
                        hintText: "Team Composition"),

                      SizedBox(height: 20,),
                      const Text(
                        "Founder Name",
                        style: AppStyles.normalPrimaryTextStyle,
                      ),
                      const SizedBox(height: 5,),
                      CustomTextInputField(
                        controller: _founderNameController, 
                        hintText: "Founder Nane"),

                      SizedBox(height: 20,),
                      const Text(
                        "Founder Email",
                        style: AppStyles.normalPrimaryTextStyle,
                      ),
                      const SizedBox(height: 5,),
                      CustomTextInputField(
                        controller: _founderEmailController, 
                        hintText: "Founder Email"),

                      SizedBox(height: 20,),
                      const Text(
                        "Founder Role",
                        style: AppStyles.normalPrimaryTextStyle,
                      ),
                      const SizedBox(height: 5,),
                      CustomTextInputField(
                        controller: _founderRoleController, 
                        hintText: "Founder Role"),

                      SizedBox(height: 20,),
                      const Text(
                        "Phone Number",
                        style: AppStyles.normalPrimaryTextStyle,
                      ),
                      const SizedBox(height: 5,),
                      CustomPhoneInputField(
                        controller: _phoneNumberController, 
                        hintText: "Phone Number"),

                      SizedBox(height: 20,),
                      const Text(
                        "Temporary Password",
                        style: AppStyles.normalPrimaryTextStyle,
                      ),
                      const SizedBox(height: 5,),
                      CustomTextInputField(
                        obscureText: true,
                        controller: _passwordController, 
                        hintText: "Temporary Password"),

                      SizedBox(height: 20,),
                      const Text(
                        "Repeat Password",
                        style: AppStyles.normalPrimaryTextStyle,
                      ),
                      const SizedBox(height: 5,),
                      CustomTextInputField(
                        obscureText: true,
                        controller: _repeatPasswordController, 
                        hintText: "Repeat password"),
                      
                    ],
                  ),
                )),
              const SizedBox(height: 10,),
              ConeredButton(
                bgColor: AppColors.primaryColor, 
                text: widget.isEdit?"Save changes": "Register", 
                txtColor: Colors.white, 
                onclick: (){
                  // Navigator.pushNamed(
                  //     context, RouteGenerator.innovatorsDashBoardScreen);
                }),
              // const SizedBox(height: 15,),
              // SizedBox(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       const Text(
              //         "Have an account ?",
              //         style: AppStyles.normalGreyTextStyle,),
              //       TextButton(
              //         onPressed: (){
              //           Navigator.pushNamed(
              //         context, RouteGenerator.innovatorSigninScreen);
              //         }, 
              //         child: Text(
              //         "Login",
              //         style: AppStyles.normalPrimaryTextStyle,))
              //     ],
              //   ),
              // ),
              const SizedBox(height: 20,)
            ],
          ),)),   


    );
  }
}