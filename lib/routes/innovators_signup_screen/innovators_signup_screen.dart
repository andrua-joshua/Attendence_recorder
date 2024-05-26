import 'package:attendance_app/route.dart';
import 'package:attendance_app/utils/app_colors.dart';
import 'package:attendance_app/utils/app_styles.dart';
import 'package:attendance_app/utils/custom_widgets.dart';
import 'package:flutter/material.dart';

class InnovatorsSignUpScreen extends StatefulWidget{
  final bool isAdmin;
  final bool isCompany;
  final bool isEdit;
  const InnovatorsSignUpScreen({
    required this.isAdmin,
    required this.isCompany,
    required this.isEdit,
    super.key});
    

  @override
  _innovatorsSignUpScreenState createState()=> _innovatorsSignUpScreenState();
}


class _innovatorsSignUpScreenState extends State<InnovatorsSignUpScreen>{

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _givenController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _companyController = TextEditingController();
  final TextEditingController _departmentController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repeatPasswordController = TextEditingController();

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
        leading: IconButton(
          onPressed: ()=> Navigator.pop(context), 
          icon: const Icon(Icons.arrow_back, color:  Colors.white,)),
        title: Text(
          widget.isEdit? 
          "Edit Profile"
          :widget.isAdmin?
          "Register Admin"
          :widget.isCompany?
          "Register Company":
          "Register Member",
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
                            image: AssetImage(
                              widget.isAdmin?
                              "assets/images/admin.jpeg":
                               "assets/images/innovator.jpeg"))
                        ),
                      ),
                      SizedBox(height: 20,),
                      const Text(
                        "Surname",
                        style: AppStyles.normalPrimaryTextStyle,
                      ),
                      const SizedBox(height: 5,),
                      CustomTextInputField(
                        controller: _surnameController, 
                        hintText: "Enter your surname"),
                      SizedBox(height: 20,),
                      const Text(
                        "Given name",
                        style: AppStyles.normalPrimaryTextStyle,
                      ),
                      const SizedBox(height: 5,),
                      CustomTextInputField(
                        controller: _givenController, 
                        hintText: "Enter your given name"),
                      
                      SizedBox(height: 20,),
                      const Text(
                        "Gender",
                        style: AppStyles.normalPrimaryTextStyle,
                      ),
                      const SizedBox(height: 5,),
                      CustomTextInputField(
                        controller: _genderController, 
                        hintText: "Gender"),
                      SizedBox(height: 20,),
                      const Text(
                        "Phone number",
                        style: AppStyles.normalPrimaryTextStyle,
                      ),
                      const SizedBox(height: 5,),
                      CustomPhoneInputField(
                        controller: _phoneController, 
                        hintText: "Phone"),
                      SizedBox(height: 20,),
                      const Text(
                        "Email Address",
                        style: AppStyles.normalPrimaryTextStyle,
                      ),
                      const SizedBox(height: 5,),
                      CustomTextInputField(
                        controller: _emailController, 
                        hintText: "Enter your email Adress"),
                      SizedBox(height: 20,),

                      Text(
                        widget.isAdmin? "Department"
                        :"Company",
                        style: AppStyles.normalPrimaryTextStyle,
                      ),
                      const SizedBox(height: 5,),
                      CustomTextInputField(
                        controller: widget.isAdmin?_departmentController: _companyController, 
                        hintText: widget.isAdmin? 
                          "Department":"Company"),
                      SizedBox(height: 20,),
                    
                      const Text(
                        "Password",
                        style: AppStyles.normalPrimaryTextStyle,
                      ),
                      const SizedBox(height: 5,),
                      CustomTextInputField(
                        controller: _passwordController, 
                        obscureText: true,
                        hintText: "Password"),
                      SizedBox(height: 20,),
                      const Text(
                        "Repeat Password",
                        style: AppStyles.normalPrimaryTextStyle,
                      ),
                      const SizedBox(height: 5,),
                      CustomTextInputField(
                        obscureText: true,
                        controller: _repeatPasswordController, 
                        hintText: "Repeat Password"),

                      const SizedBox(height:20,),
                      // RememberWidget(
                      //   onChange: (v){
                      //     setState(() {
                      //       _remValue = v;
                      //     });
                      //   }, 
                      //   value: _remValue)
                    ],
                  ),
                )),
              const SizedBox(height: 10,),
              ConeredButton(
                bgColor: AppColors.primaryColor, 
                text:widget.isEdit? "Save Changes": "Register", 
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