import 'package:attendance_app/routes/members_or_companies_view_screen/members_or_companies_view_screen.dart';
import 'package:attendance_app/routes/user_profile_screen/user_profile_screen.dart';
import 'package:attendance_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AdminDashBoardScreen extends StatefulWidget{
  const AdminDashBoardScreen({super.key});



  @override
  _adminScreenState createState () => _adminScreenState();
}

class _adminScreenState extends State<AdminDashBoardScreen>{

  int _currentIndex = 1;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _currentIndex==1?
        const UserProfileScreen(isAdmin: true)
        :_currentIndex == 0?
        const ViewMemebersOrCompaniesScreen(
          isCompanies: false, 
          isAdmin: true)
        :const ViewMemebersOrCompaniesScreen(
          isCompanies: true, 
          isAdmin: false),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.primaryColor,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            label: "Adminstrators",
            icon: Icon(Icons.admin_panel_settings)),
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home)),
          BottomNavigationBarItem(
            label: "Innovators",
            icon: Icon(Icons.inventory)),
          
        ]),
    );
  }
}