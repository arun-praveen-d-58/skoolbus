import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:skoolbus/common/custom_LoginInButton.dart';
import 'package:skoolbus/common/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skoolbus/common/custom_outLineButton.dart';
import 'package:skoolbus/common/custom_pushBackButton.dart';
import 'package:skoolbus/screens/loginScreen.dart';
import 'package:skoolbus/screens/registerScreen.dart';
class WelcomeScreen extends StatefulWidget {
  static const String routeName = '/welcome-screen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,

        body: SafeArea(
          child: SingleChildScrollView(

    child: Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.start,

    children: [
    //   Text("$screenWidth",style: TextStyle(fontSize: 45),),
    Stack(
    children: [
    Align(
    alignment: AlignmentDirectional(0,0),
    child: SizedBox(
    width: double.infinity,

    height: (screenWidth<600?375.h:510.h),

    child: SvgPicture.asset(
    'assets/welcome_screen/bg.svg',
    width: double.infinity ,

    fit: BoxFit.cover,
    ),
    ),
    ),
    Align(
    alignment: AlignmentDirectional(0, 0),

    child: Column(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Padding(
    padding:
    EdgeInsetsDirectional.fromSTEB(0, 50.h, 0, 0),
    child: Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Padding(
    padding: EdgeInsetsDirectional.fromSTEB(
    0, 0, 11.h, 0),
    child: SvgPicture.asset(
    'assets/welcome_screen/star.svg',
    width: 35.w,
    height: 43.h,
    fit: BoxFit.cover,
    ),
    ),
    SvgPicture.asset(
    'assets/welcome_screen/title.svg',
    width: 151.w,
    height: 24.h,
    fit: BoxFit.cover,
    ),
    ],
    ),
    ),
    Align(
    alignment: AlignmentDirectional(0, 0),
    child: Padding(
    padding: EdgeInsetsDirectional.fromSTEB(
    30, 40.h, 30,0),
    child: Image.asset(
    'assets/welcome_screen/image.png',
    width: 230.h,
    height: 180.h,
    fit: BoxFit.cover,
    ),
    ),
    ),

    Align(
    alignment: AlignmentDirectional(0, 0),
    child: Padding(
    padding: EdgeInsetsDirectional.fromSTEB(0,32.h, 0, 0),
    child: Text("Glad to see you!",style:  GoogleFonts.poppins(
    textStyle: TextStyle(fontSize: 22.h,fontWeight: FontWeight.w600,color: HexColor("#1E232C")))),),


    ),
    SizedBox(height: 8.h,),
    Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    SizedBox(
    width: 220.w,
    child:Text("Login to your account below or Signup for an amazing experience",textAlign: TextAlign.center,

    style:  GoogleFonts.poppins(textStyle: TextStyle(
    fontSize: 12.sp,fontWeight: FontWeight.w400,color: HexColor("#6A707C"),
    ),
    )

    ),
    ),
    SizedBox(height: 28.h,),
    Padding(
    padding: EdgeInsets.only(left: 30.0,top: 0,right: 30.0,bottom: 18.h),
    child: CustomButton(text: "Login", onTap: (){
       /*
         /////////////////////////////////////////////////////////////////////////////////////////

          LOGIN ON TAP

          ////////////////////////////////////////////////////////////////////////////////////////
      */
     // Navigator.pushNamedAndRemoveUntil(context, LoginScreen.routeName, (route) => false);
      Navigator.pushNamed(context, LoginScreen.routeName);
    }, color: HexColor("#12A35C"),TextColor: Colors.white,),
    ),
    Padding(
    padding:EdgeInsets.only(left: 30.0,top: 0,right: 30.0,bottom: 24.h),
    child: CustomOutlineButton(text: "Register", onTap: (){
      /*
      /////////////////////////////////////////////////////////////////////////////////////////////

        REGISTER ON TAP

      //////////////////////////////////////////////////////////////////////////////////////////////
       */
    // Navigator.pushNamedAndRemoveUntil(context, RegisterScreen.routeName, (route) => false);

     Navigator.pushNamed(context, RegisterScreen.routeName);
    }, color: HexColor("#FFFFFF"),TextColor: HexColor("#6A707C")),
    ),

    Padding(
    padding: EdgeInsets.only(left: 0.0,top: 0.0,right: 0,bottom: 10.h),
    child: GestureDetector(
    child: Text("Continue as a guest",
    style: GoogleFonts.poppins(
    textStyle: TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
    color: HexColor("#12A35C"),
    decoration: TextDecoration.underline
    )
    ),

    ),

    onTap: (){
      /*
      /////////////////////////////////////////////////////////////////////////////////////////////////////

      continue as a guest ON TAP

      /////////////////////////////////////////////////////////////////////////////////////////////////////
      */
    },
    ),
    ),



    ],
    ),
    ],
    ),
    ),

    ],
    ),

    ],
    ),
    ),
        ),


    );
    }}