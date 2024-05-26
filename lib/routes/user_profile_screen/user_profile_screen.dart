import 'package:attendance_app/route.dart';
import 'package:attendance_app/utils/app_colors.dart';
import 'package:attendance_app/utils/app_styles.dart';
import 'package:attendance_app/utils/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserProfileScreen extends StatefulWidget{
  final bool isAdmin;
  const UserProfileScreen({
    required this.isAdmin,
    super.key,
    });


  @override
  _userProfileScreenState createState() => _userProfileScreenState();
}


class _userProfileScreenState extends State<UserProfileScreen>{


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            widget.isAdmin?null
            :Navigator.pushNamed(context, RouteGenerator.membersScreen, 
            arguments: {
          "isCompany":false,
          "isAdmin":false
        });
          }, 
          icon: const Icon(Icons.view_agenda_outlined, color: Colors.white,)),
        title: Text(
          widget.isAdmin?"Admin. Profile": "Innovator Profile",
          style: AppStyles.titleWhiteTextStyle,
        ),
        centerTitle: true,

        actions: [
          IconButton(
          onPressed: (){
            Navigator.pushNamed(
              context, RouteGenerator.innovatorSignUpScreen,
              arguments: {
                      "isAdmin":widget .isAdmin,
                      "isCompany":false,
                      'isEdit':true
                    });
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
                          image: DecorationImage(
                              fit: BoxFit.cover,
                            image: AssetImage(
                              widget.isAdmin? "assets/images/admin.jpeg"
                              :"assets/images/innovator.jpeg"))
                        ),
                      ),
                      SizedBox(height: 20,),
                      const Text("23rd May, 2024", style: AppStyles.titlePrimaryTextStyle,),
                      const Text("11:37 AM", style: AppStyles.titlePrimaryTextStyle,),
                      SizedBox(height: 20,),
                      _labelValueWidget(
                        "Name:", "Drillox"),
                      SizedBox(height: 10,),
                      _labelValueWidget(
                        widget.isAdmin?"Department":"Company:", widget.isAdmin?"Facility":"Cognoshere dynamics"),
                      SizedBox(height: 10,),
                      _labelValueWidget(
                        "Role:", widget.isAdmin?"Administrator": "Senior Software Developer"),
                      SizedBox(height: 10,),
                      _labelValueWidget(
                        "Number:", "0770415423"),
                      SizedBox(height: 10,),
                      _labelValueWidget(
                        "Last Login Date:", "04 03, 2022"),
                      SizedBox(height: 10,),
                      _labelValueWidget(
                        "Last Login Time:", "5:00 PM"),

                    ],
                  ),
                )),
              const SizedBox(height: 10,),
              ConeredButton(
                bgColor: AppColors.primaryColor, 
                text: "Login",   
                txtColor: Colors.white, 
                onclick: (){}),
              SizedBox(height: 20,)
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