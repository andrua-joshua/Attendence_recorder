import 'package:attendance_app/routes/admin_dashboard/admin_dashboard_screen.dart';
import 'package:attendance_app/routes/admin_signin_screen/admin_signin_screen.dart';
import 'package:attendance_app/routes/company_details_screen/company_details_screen.dart';
import 'package:attendance_app/routes/company_registration/company_registration_screen.dart';
import 'package:attendance_app/routes/innovators_dashBoard/innovators_dashboard_screen.dart';
import 'package:attendance_app/routes/innovators_signin_screen/innovators_signin_screen.dart';
import 'package:attendance_app/routes/innovators_signup_screen/innovators_signup_screen.dart';
import 'package:attendance_app/routes/members_or_companies_view_screen/members_or_companies_view_screen.dart';
import 'package:attendance_app/routes/onboarding_screen/onboarding_screen.dart';
import 'package:attendance_app/routes/splash_screen/splash_screen.dart';
import 'package:attendance_app/routes/user_profile_screen/user_profile_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator{
  static const splashScreen = "/";
  static const onboardingScreen = "/onboardingScreen";
  static const innovatorSigninScreen = "/innovatorSigninScreen";
  static const innovatorSignUpScreen = "/innovatorSignUpScreen";
  static const userProfileScreen = "/userProfileScreen";
  static const memberProfileScreen = "/memberProfileScreen";
  static const adminLoginScreen = "/adminLoginScreen";
  static const membersScreen = "/membersScreen";
  static const adminDashboardScreen = "/adminDashboardScreen";
  static const companyRegistratiomScreen = "/companyRegistratiomScreen";
  static const companyDetailsScreen = "/companyDetailsScreen";

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case splashScreen:
        return MaterialPageRoute(
          builder: (_)=> const SplashScreeen());
      case adminDashboardScreen:
        return MaterialPageRoute(
          builder: (_)=> const AdminDashBoardScreen());
      case companyDetailsScreen:
        return MaterialPageRoute(
          builder: (_)=> const CompanyProfileScreen());

      case companyRegistratiomScreen:
        final Map<String, bool> data = settings.arguments as Map<String, bool>;
        return MaterialPageRoute(
          builder: (_)=> CompanyRegistrationScreen(
            isEdit: data['isEdit']?? false,));
      case onboardingScreen:
        return MaterialPageRoute(
          builder: (_)=> const OnboardingScreen());
      case innovatorSigninScreen:
        return MaterialPageRoute(
          builder: (_)=> const InnovatorsSignInScreen());
      case innovatorSignUpScreen:
        final Map<String, bool> data = settings.arguments as Map<String, bool>;
        return MaterialPageRoute(
          builder: (_)=> InnovatorsSignUpScreen(
            isAdmin: data['isAdmin']??false,
            isCompany: data['isCompany']??false,
            isEdit: data['isEdit']??false,
          ));
      case memberProfileScreen:
        Map<String, bool> data = settings.arguments as Map<String, bool>;
        return MaterialPageRoute(
          builder: (_)=> InnovatorsDashBoardScreen(
            isCompany: data['isCompany']??false, isAdmin: data['isAdmin']?? false));
      case membersScreen:
        Map<String, bool> data = settings.arguments as Map<String, bool>;
        return MaterialPageRoute(
          builder: (_)=> ViewMemebersOrCompaniesScreen(
            isCompanies: data['isCompanies']??false, isAdmin: data['isAdmin']?? false));
      case userProfileScreen:
        bool isAdmin = settings.arguments as bool;
        return MaterialPageRoute(
          builder: (_)=> UserProfileScreen(isAdmin: isAdmin,));
      case adminLoginScreen:
        return MaterialPageRoute(
          builder: (_)=> const AdminsSignInScreen());
      default:
        return MaterialPageRoute(
          builder: (_)=> const SplashScreeen());
    }
  }
}