import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:skoolbus/common/custom_LoginInButton.dart';
import 'package:skoolbus/common/custom_TextField.dart';
import 'package:skoolbus/common/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:skoolbus/common/custom_pushBackButton.dart';
import 'package:skoolbus/screens/ConfirmationScreen.dart';
class NewPasswordScreen extends StatefulWidget {
  static const String routeName = '/newPassword-screen';
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final _NewPasswordFormKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(

      backgroundColor: Colors.white,

      body: SafeArea(

        child:SingleChildScrollView(
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

          Pushback ON TAP

          ////////////////////////////////////////////////////////////////////////////////////////
      */

                                  Navigator.pop(context);


                                },),
                              )
                            ],
                          ),
                        ),


                      ]

                  ),

                  SizedBox(
                    width: 500.h,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
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
                                  'Create new password',
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
                                    "Your new password must be unique from those previously used.",
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
                          key: _NewPasswordFormKey,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 10.h),
                                child: CustomTextField(controller: _passwordController, hintText: "New Password", type: TextInputType.text,obscured: true, ),
                              ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 29.h),
                          child: CustomTextField(controller: _confirmPasswordController, hintText: "Confirm Password", type: TextInputType.text,obscured: true,),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30,20),
                          child: CustomButton(text: "Reset Password", onTap: (){
                            /*
         /////////////////////////////////////////////////////////////////////////////////////////

          Reset password ON TAP

          ////////////////////////////////////////////////////////////////////////////////////////
      */  if(_passwordController.text.isEmpty || _confirmPasswordController.text.isEmpty) {
                              final snackBar = SnackBar(
                                content: const Text(
                                    'Please enter all the fields'),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                  snackBar);
                            }
                            if(_NewPasswordFormKey.currentState!.validate()){
                              //  signUpUser();

                            }
                            Navigator.pushNamed(context, ConfirmationScreen.routeName);
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
        ),
      ),





    );
  }
}

