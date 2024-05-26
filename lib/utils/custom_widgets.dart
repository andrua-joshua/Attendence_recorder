import 'package:attendance_app/route.dart';
import 'package:attendance_app/utils/app_font_size.dart';
import 'package:attendance_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OutlinedCustomButton extends StatelessWidget{
  final Color txtColor;
  final Color borderColor;
  final String text;
  final Function() onclick;
  const OutlinedCustomButton({
    required this.borderColor,
    required this.text,
    required this.txtColor,
    required this.onclick,
    super.key
  });


  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: borderColor, width: 2)
      ),
      child: TextButton(
        onPressed: ()=> onclick(), 
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: AppFontSize.normalFontSize,
              color: txtColor
            ),),)),
    );
  }
}


class ConeredButton extends StatelessWidget{
  final Color txtColor;
  final Color bgColor;
  final String text;
  final Function() onclick;
  const ConeredButton({
    required this.bgColor,
    required this.text,
    required this.txtColor,
    required this.onclick,
    super.key
  });


  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor
      ),
      child: TextButton(
        onPressed: ()=> onclick(), 
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: AppFontSize.normalFontSize,
              color: txtColor
            ),),)),
    );
  }
}



class CustomTextInputField extends StatelessWidget{
  final TextEditingController controller;
  final String hintText;
  final bool? obscureText;
  String? Function(String?)? validator;

  CustomTextInputField({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText,
    this.validator
  });


  @override
  Widget build(BuildContext context){
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey, width: 2),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: obscureText??false,
        style: AppStyles.normalBlackTextStyle,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          suffixIcon: obscureText??false? const Icon(Icons.visibility_off, color: Colors.black,):null
        ),
      ),
    );
  }
}


class CustomPhoneInputField extends StatelessWidget{
  final TextEditingController controller;
  final String hintText;
  String? Function(String?)? validator;

  CustomPhoneInputField({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator
  });


  @override
  Widget build(BuildContext context){
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey, width: 2),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          const Text(
            "+256",
            style: AppStyles.normalBlackTextStyle,),
          Container(
            color: Colors.grey,
            width: 1,
            height: 46,
            margin: const EdgeInsets.only(left: 5),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child:TextFormField(
              controller: controller,
              validator: validator,
              style: AppStyles.normalBlackTextStyle,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText
              ),
          )))
        ],
      ),
    );
  }
}


class RememberWidget extends StatefulWidget{
  final Function(bool) onChange;
  final bool value;
  const RememberWidget({
    super.key,
    required this.onChange,
    required this.value
  });

  @override
  _rememberWidgetState createState() => _rememberWidgetState();
}


class _rememberWidgetState extends State<RememberWidget>{

  bool isChecked = false;

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Checkbox(
          value: widget.value, 
          onChanged: (v){
            widget.onChange(v??false);
          }),
        
        SizedBox(width: 10,),
        const Text("Rmember Me", style: AppStyles.normalBlackTextStyle,),
        Expanded(
          child: SizedBox()),
        TextButton(
          onPressed: (){}, 
          child: const Text("forgot Password", style: AppStyles.normalPrimaryTextStyle,))
      ],
    );
  }
}




Widget UnitMemberWidget({
  required bool isCompany,
  required bool isAdmin,
  required String name,
  required String imageUrl,
  required BuildContext context
}){

  return GestureDetector(
    onTap: (){
      isCompany? 
      Navigator.pushNamed(
        context, 
        RouteGenerator.companyDetailsScreen):
      Navigator.pushNamed(
        context, RouteGenerator.memberProfileScreen ,
        arguments: {
          "isCompany":isCompany,
          "isAdmin":isAdmin
        });
    },
    child:SizedBox(
    child: Column(
      children: [
        SizedBox(
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                foregroundImage: AssetImage(
                  isAdmin? 
                  "assets/images/admin.jpeg"
                  :isCompany? "assets/images/sphere_logo.png"
                  :"assets/images/innovator.jpeg"),
              ),
              SizedBox(width: 10,),
              Expanded(
                child:Text(
                  name, 
                  style: AppStyles.normalBlackTextStyle,
                  overflow: TextOverflow.ellipsis,))
            ],
          ),
        ),
        const SizedBox(height: 5,),
        const Divider(height: 0.4, color: Colors.grey,)
      ],
    ),
  ));

}