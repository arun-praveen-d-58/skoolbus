import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:skoolbus/common/custom_LoginInButton.dart';
import 'package:skoolbus/common/custom_TextField.dart';
import 'package:skoolbus/common/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:skoolbus/common/custom_pushBackButton.dart';
import 'package:skoolbus/screens/ConfirmationScreen.dart';
import 'package:skoolbus/screens/newPasswordScreen.dart';
class OTPScreen extends StatefulWidget {
  static const String routeName = '/otp-screen';
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final _OTPFormKey = GlobalKey<FormState>();
 // final TextEditingController _emailController = TextEditingController();


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

              Text("Didn’t received code? ",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: HexColor("#1E232C"),

                    )
                ),
              ),


              GestureDetector(
                child: Text("Resend",
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

          Resend ON TAP

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
                Text("Didn’t received code? ",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: HexColor("#1E232C"),

                      )
                  ),
                ),


                GestureDetector(
                  child: Text("Resend",
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

            Resend ON TAP

            ////////////////////////////////////////////////////////////////////////////////////////

               */

                  },
                ),
              ],
            ),


          ),
          children: [
            SingleChildScrollView(
            child: Center(
              child: Column(
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

            Push back ON TAP

            ////////////////////////////////////////////////////////////////////////////////////////
      */


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
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width:500,
                                  child: Text(
                                    'OTP Verification',
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
                                      "Enter the verification code we just sent on your email address.",
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
                          key: _OTPFormKey,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 26.h),
                                  child:  OtpTextField(
                                    numberOfFields: 4,
                                   // borderColor:  Color(0xFF000000),
                                    decoration: InputDecoration(

                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                             Radius.circular(8.r),
                                          ),

                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(8.r),
                                          ),
                                          borderSide:BorderSide(
                                            color: 	Color(0xFF000000),
                                          )

                                      ),

                                    ),
                                    //set to true to show as box or false to show as dash
                                    showFieldAsBox: true,
                                    //runs when a code is typed in
                                    onCodeChanged: (String code) {
                                      //handle validation or checks here
                                    },
                                    //runs when every textfield is filled
                                    onSubmit: (String verificationCode){





                                    }, // end onSubm
                                    fieldWidth: (screenWidth<600)? screenWidth*0.18:40.w,// it
                                  ),
                                ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                            child: CustomButton(text: "Verify", onTap: (){
                              /*
           /////////////////////////////////////////////////////////////////////////////////////////

            Send code ON TAP

            ////////////////////////////////////////////////////////////////////////////////////////
      */
                              /*
                              if(_emailController.text.isEmpty) {
                                final snackBar = SnackBar(
                                  content: const Text(
                                      'Please enter all the fields'),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(
                                    snackBar);
                              }
                              if(_OTPFormKey.currentState!.validate()){
                                //  signUpUser();

                              }

                               */
                              Navigator.pushNamed(context, NewPasswordScreen.routeName);
                            }, color: HexColor("#12A35C"),TextColor: Colors.white,),
                          ),
                              ],
                            ),
                          ),

                          Flexible(child: Container(),
                            flex: 2,
                            fit: FlexFit.loose,

                          ),


                        ],





                      ),



                    ),
                  ]
              ),
            ),
          ),
    ],
        ),
      ),





    );
  }
}




