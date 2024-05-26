import 'package:attendance_app/route.dart';
import 'package:attendance_app/routes/company_details_screen/widgets/company_details_screen.dart';
import 'package:attendance_app/utils/app_colors.dart';
import 'package:attendance_app/utils/app_styles.dart';
import 'package:attendance_app/utils/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CompanyProfileScreen extends StatefulWidget{
  const CompanyProfileScreen({super.key});


  @override
  _companyProfileScreenState createState() => _companyProfileScreenState();
}


class _companyProfileScreenState extends State<CompanyProfileScreen>{


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.pop(context), 
          icon: const Icon(Icons.arrow_back, color: Colors.white,)),
        title: const Text(
          "Innovation Hub",
          style: AppStyles.titleWhiteTextStyle,
        ),
        centerTitle: true,

        actions: [
          IconButton(
          onPressed: (){
            Navigator.pushNamed(
              context, 
              RouteGenerator.companyRegistratiomScreen,
               arguments: {
                'isEdit':true
               }
               );
          }, 
          icon: const Icon(Icons.edit_note_sharp, color: Colors.white,))
        ],
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        constraints: const BoxConstraints.expand(height: 300,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.smoothWhite,
                          image: const DecorationImage(
                              fit: BoxFit.contain,
                            image: AssetImage("assets/images/sphere_logo.png"))
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Text("23rd May, 2024", style: AppStyles.titlePrimaryTextStyle,),
                      const Text("11:37 AM", style: AppStyles.titlePrimaryTextStyle,),
                      const SizedBox(height: 20,),
                      _labelValueWidget(
                        "Name:", "Drillox"),
                      const SizedBox(height: 10,),
                      _labelValueWidget(
                        "Industry:", "SoftWare, AI & Robotics"),
                      const SizedBox(height: 30,),
                      _labelValueWidget(
                        "Team Composition:", "23"),
                      const SizedBox(height: 10,),
                      _labelValueWidget(
                        "Login Stat:", "23%"),
                      const SizedBox(height: 10,),
                      _labelValueWidget(
                        "Logout Stat:", "65%"),
                      const SizedBox(height: 20,),
                      ExpandableWidget(
                        items: List.generate(
                          5, (index) 
                          => Padding(
                                padding: const EdgeInsets.symmetric(vertical: 7),
                                child: UnitMemberWidget(
                                  isCompany: false, 
                                  isAdmin: false,
                                  name:  "Member name $index", 
                                  imageUrl: "imageUrl", context: context),)), 
                        label: "Team Memebers")
                    ],
                  ),
                )),
              const SizedBox(height: 10,),
              ConeredButton(
                bgColor: AppColors.primaryColor, 
                text: "Delete Company",   
                txtColor: Colors.white, 
                onclick: (){}),
              SizedBox(height: 20,),
            ],
          ),)),
    );
  }

  Widget _labelValueWidget (String label, String value){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child:Row(
      children: [
        Text(
          label,
          style: AppStyles.normalBlackTextStyle,
        ),
        SizedBox(width: 10,),
        Expanded(
          child:Text(
          value,
          textAlign: TextAlign.end,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.normalPrimaryTextStyle,
        )),
      ],
    ));
  }
}