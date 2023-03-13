

import 'package:flutter/material.dart';
import 'package:skoolbus/screens/ConfirmationScreen.dart';
import 'package:skoolbus/screens/forgetPasswordScreen.dart';
import 'package:skoolbus/screens/loginScreen.dart';
import 'package:skoolbus/screens/newPasswordScreen.dart';
import 'package:skoolbus/screens/otpScreen.dart';
import 'package:skoolbus/screens/registerScreen.dart';
import 'package:skoolbus/screens/welcomeScreen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings){
  switch(routeSettings.name){
    case WelcomeScreen.routeName:
        return MaterialPageRoute(settings: routeSettings,
         builder: (context)=> const WelcomeScreen(),);

    case LoginScreen.routeName:
      return MaterialPageRoute(settings: routeSettings,
        builder: (context)=> const LoginScreen(),);

    case RegisterScreen.routeName:
      return MaterialPageRoute(settings: routeSettings,
        builder: (context)=> const RegisterScreen(),);

    case ForgetPasswordScreen.routeName:
      return MaterialPageRoute(settings: routeSettings,
        builder: (context)=> const ForgetPasswordScreen(),);
    case OTPScreen.routeName:
      return MaterialPageRoute(settings: routeSettings,
        builder: (context)=> const OTPScreen());

    case ForgetPasswordScreen.routeName:
      return MaterialPageRoute(settings: routeSettings,
        builder: (context)=> const ForgetPasswordScreen(),);
    case ConfirmationScreen.routeName:
      return MaterialPageRoute(settings: routeSettings,
        builder: (context)=> const ConfirmationScreen(),);
    case NewPasswordScreen.routeName:
      return MaterialPageRoute(settings: routeSettings,
        builder: (context)=> const NewPasswordScreen());

    default:
      return MaterialPageRoute(settings: routeSettings,
        builder: (context)=> const Scaffold(
          body: Center(
            child: Text('Page not found'),
          ),
        ),);
  }
}

