import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skoolbus/router.dart';
import 'package:skoolbus/screens/ConfirmationScreen.dart';
import 'package:skoolbus/screens/forgetPasswordScreen.dart';
import 'package:skoolbus/screens/loginScreen.dart';
import 'package:skoolbus/screens/newPasswordScreen.dart';
import 'package:skoolbus/screens/otpScreen.dart';
import 'package:skoolbus/screens/registerScreen.dart';

import 'package:skoolbus/screens/splashScreen.dart';
import 'package:skoolbus/screens/welcomeScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context,child)=> MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'skoolbus',
        theme: ThemeData(

        ),
     //   home: ForgetPasswordScreen()
          onGenerateRoute: (settings)=> generateRoute(settings),
       home: SplashScreen()
      ),
      designSize: const Size(360, 640),
    );
  }
}

