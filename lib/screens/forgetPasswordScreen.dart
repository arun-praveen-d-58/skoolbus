import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:skoolbus/common/custom_LoginInButton.dart';
import 'package:skoolbus/common/custom_TextField.dart';
import 'package:skoolbus/common/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:skoolbus/common/custom_pushBackButton.dart';
import 'package:skoolbus/screens/loginScreen.dart';
import 'package:skoolbus/screens/otpScreen.dart';
class ForgetPasswordScreen extends StatefulWidget {
  static const String routeName = '/forgetPassword-screen';
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final _ForgetPasswordFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(

      backgroundColor: Colors.white,
/*
      bottomSheet: Container(
        color: Colors.white,
        child: Padding(
          padding:  EdgeInsets.all(20.h),
          child: Row(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [

              Text("Remember Password? ",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: HexColor("#1E232C"),

                    )
                ),
              ),


              GestureDetector(
                child: Text("Login",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700,
                        color: HexColor("#12A35C"),

                      )
                  ),
                ),
                onTap: (){
                  /*
             /////////////////////////////////////////////////////////////////////////////////////////

              LOGIN ON TAP

              ////////////////////////////////////////////////////////////////////////////////////////
          */



                },
              ),
            ],
          ),
        ),
      ),

*/
      body: SafeArea(

        child:FooterView(
          footer: Footer(
            backgroundColor: Colors.white,
            padding: EdgeInsets.only(left: 0,right: 0,top: 0,bottom: 20),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [

                Text("Remember Password? ",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: HexColor("#1E232C"),

                      )
                  ),
                ),


                GestureDetector(
                  child: Text("Login",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          color: HexColor("#12A35C"),

                        )
                    ),
                  ),
                  onTap: (){
                    /*
           /////////////////////////////////////////////////////////////////////////////////////////

            LOGIN ON TAP

            ////////////////////////////////////////////////////////////////////////////////////////
      */
                  //  Navigator.pushNamedAndRemoveUntil(context, LoginScreen.routeName, (route) => false);
                  Navigator.pop(context);
                  },
                ),
              ],
            ),


          ),
          children:[
            SingleChildScrollView(
            child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(

                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,


                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(30, 20.h, 30, 18.h),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 40.h,
                                width: 40.h,
                                child: CustomPushBackButton(onTap: (){

                                  /*
           /////////////////////////////////////////////////////////////////////////////////////////

            push back ON TAP

            ////////////////////////////////////////////////////////////////////////////////////////
      */


                                //  Navigator.pushNamedAndRemoveUntil(context, LoginScreen.routeName, (route) => false);
                                 // Navigator.popUntil(context, (route) => false);
                                   Navigator.pop(context);
                                },),
                              )
                            ],
                          ),
                        ),


                      ]

                  ),

                      SizedBox(
                      width: 500.w,
                      child: Column(
                         mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30,33.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width:500,
                                child: Text(
                                  'Forgot Password?',
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600
                                      )
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 500,
                                child: Text(
                                    "Don't worry! It occurs. Please enter the email address linked with your account.",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400
                                        )
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),



                        Form(
                          key: _ForgetPasswordFormKey,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 25.h),
                                child: CustomTextField(controller: _emailController, hintText: "Enter your email", type: TextInputType.text,obscured: false),
                              ),

                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30,0),
                          child: CustomButton(text: "Send Code", onTap: (){

                            /*
           /////////////////////////////////////////////////////////////////////////////////////////

            Send code ON TAP

            ////////////////////////////////////////////////////////////////////////////////////////
      */                    if(_emailController.text.isEmpty) {
                              final snackBar = SnackBar(
                                content: const Text(
                                    'Please enter all the fields'),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                  snackBar);
                            }

                          else if(_ForgetPasswordFormKey.currentState!.validate()){
                              //  signUpUser();
                              Navigator.pushNamed(context, OTPScreen.routeName);
                            }



                          }, color: HexColor("#12A35C"),TextColor: Colors.white,),
                        ),
                            ],
                          ),
                        ),





],





                    ),



              ),
    ]
    ),
      ),

          ],
        ),
      ),





    );
  }
}







