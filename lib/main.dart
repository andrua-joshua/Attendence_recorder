import 'package:attendance_app/route.dart';
import 'package:attendance_app/routes/admin_dashboard/admin_dashboard_screen.dart';
import 'package:attendance_app/routes/admin_signin_screen/admin_signin_screen.dart';
import 'package:attendance_app/routes/company_details_screen/company_details_screen.dart';
import 'package:attendance_app/routes/company_registration/company_registration_screen.dart';
import 'package:attendance_app/routes/innovators_dashBoard/innovators_dashboard_screen.dart';
import 'package:attendance_app/routes/innovators_signin_screen/innovators_signin_screen.dart';
import 'package:attendance_app/routes/innovators_signup_screen/innovators_signup_screen.dart';
import 'package:attendance_app/routes/onboarding_screen/onboarding_screen.dart';
import 'package:attendance_app/routes/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Records App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RouteGenerator.splashScreen,
      onGenerateRoute: RouteGenerator.generateRoute,
      // home: const CompanyProfileScreen(),
    );
  }
}

