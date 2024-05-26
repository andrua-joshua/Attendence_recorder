import 'package:attendance_app/route.dart';
import 'package:attendance_app/utils/app_colors.dart';
import 'package:attendance_app/utils/app_styles.dart';
import 'package:attendance_app/utils/custom_widgets.dart';
import 'package:flutter/material.dart';

class ViewMemebersOrCompaniesScreen extends StatelessWidget{
  final bool isCompanies;
  final bool isAdmin;
  const ViewMemebersOrCompaniesScreen({
    required this.isCompanies,
    required this.isAdmin,
    super.key
  });


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: ()=> Navigator.pop(context), 
          icon: const Icon(Icons.arrow_back, color: Colors.white,)),
        title: Text(
          isCompanies?"Innovators": isAdmin? "Administrators": "Team Members",
          style: AppStyles.titleWhiteTextStyle,
        ),
        centerTitle: true,

        actions: [
          // IconButton(
          // onPressed: (){}, 
          // icon: const Icon(Icons.account_circle, color: Colors.white,))
        ],
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10
          ),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                      8, (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        child: UnitMemberWidget(
                          isCompany: isCompanies, 
                          isAdmin: isAdmin,
                          name: isCompanies?"Company name $index": isAdmin? "Administrator name $index": "Member name $index", 
                          imageUrl: "imageUrl", context: context),)),
                  ),
                )),

              SizedBox(height: 10,),
              ConeredButton(
                bgColor: AppColors.primaryColor, 
                text: isCompanies
                  ?"Add Company"
                  :isAdmin?"Add Admin":"Add member", 
                  txtColor: Colors.white, 
                  onclick: (){
                  isCompanies? 
                  Navigator.pushNamed(
                    context, 
                    RouteGenerator.companyRegistratiomScreen,
                    arguments: {
                      "isEdit": false
                    })
                  :Navigator.pushNamed(
                    context, RouteGenerator.innovatorSignUpScreen,
                    arguments: {
                      "isAdmin":isAdmin,
                      "isCompany":isCompanies,
                      'isEdit':false
                    });
                  }),
              SizedBox(height: 15,)
              

            ],
          ),)),
    );
  }
}