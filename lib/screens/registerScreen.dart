import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:skoolbus/common/custom_LoginInButton.dart';
import 'package:skoolbus/common/custom_TextField.dart';
import 'package:skoolbus/common/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:skoolbus/common/custom_pushBackButton.dart';
import 'package:skoolbus/screens/welcomeScreen.dart';
class RegisterScreen extends StatefulWidget {
  static const String routeName = '/register-screen';
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _RegisterFormKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
     // resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,

      body: SafeArea(

        child:SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
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
                  Container(
                      height: 40.h,
                      width: 40.h,

                      child: CustomPushBackButton(onTap: (){
                        /*
         /////////////////////////////////////////////////////////////////////////////////////////

          PUSH BACK ON TAP

          ////////////////////////////////////////////////////////////////////////////////////////
                   */


                      //  Navigator.pushNamedAndRemoveUntil(context, WelcomeScreen.routeName, (route) => false);
                        Navigator.pop(context);
                      },),

                    ),

                ],
              ),
            ),


              ]

              ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30,0),
            child:  SizedBox(
                width: 500,
                child: Text(
                  'Hello!',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600
                      )
                  ),
                ),
              ),
          ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 25.h),
                child:SizedBox(
                  width: 500,
                  child: Text(
                    'Register to get started',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),
              ),





              Form(
                key: _RegisterFormKey,
                child: Column(
                  children: [
                    Padding(
                     padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 10.h),

                      child: CustomTextField(controller: _nameController, hintText: "Full Name", type: TextInputType.text, obscured: false, ),
                    ),
             //SizedBox(height: 10.h,),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 10.h),
                child: CustomTextField(controller: _emailController, hintText: "Email",type: TextInputType.emailAddress, obscured: false,),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 10.h),
                child: CustomTextField(controller: _passwordController,hintText: "Password",type: TextInputType.text,obscured: true),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 29.h),
                child: CustomTextField(controller: _confirmPasswordController,hintText: "Confirm password", type: TextInputType.text, obscured: true),
              ),


              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 26.h),
                child: CustomButton(text: "Register", onTap: (){
                  /*
         /////////////////////////////////////////////////////////////////////////////////////////

          REGISTER ON TAP

          ////////////////////////////////////////////////////////////////////////////////////////
      */
                  if(_passwordController.text.isEmpty || _emailController.text.isEmpty||_nameController.text.isEmpty||_confirmPasswordController.text.isEmpty) {
                    final snackBar = SnackBar(
                      content: const Text(
                          'Please enter all the fields'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                        snackBar);
                  }
                  if(_RegisterFormKey.currentState!.validate()){
                    //  signUpUser();

                  }






                }, color: HexColor("#12A35C"),TextColor: Colors.white,),
              ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 16.h),
                child: SizedBox(
                  width: 500,
                  child: Row(
                    children: [
                      Expanded(child: Divider(
                        thickness: 1,
                        color: HexColor("#E8ECF4"),
                      )),
                      SizedBox(width: 21.w,),
                      Text("OR",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: HexColor("#6A707C"),
                            )
                        ),),
                      SizedBox(width: 21.w,),
                      Expanded(child: Divider(
                        thickness: 1,
                        color: HexColor("#E8ECF4"),
                      )),

                    ],
                  ),
                ),

              ),
              Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30,25.h) ,
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children:[

                      SizedBox(
                          height: 40.h,
                          width:  (screenWidth<600)?screenWidth*0.25:105,
                          child: CustomLoginButton(onTap: (){
                            /*
         /////////////////////////////////////////////////////////////////////////////////////////

          facebook LOGIN ON TAP

          ////////////////////////////////////////////////////////////////////////////////////////
      */





                          }, icon: "assets/icons/fb.svg")
                      ),

                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8.w, 0, 8.w, 0),
                        child: SizedBox(
                            height: 40.h,
                            width:  (screenWidth<600)?screenWidth*0.25:105,
                            child: CustomLoginButton(onTap: (){
                              /*
         /////////////////////////////////////////////////////////////////////////////////////////

          Google LOGIN ON TAP

          ////////////////////////////////////////////////////////////////////////////////////////
      */


                            }, icon: "assets/icons/google_icon (2).png")
                        ),
                      ),

                      SizedBox(
                          height: 40.h,
                          width: (screenWidth<600)?screenWidth*0.25:105,
                          child: CustomLoginButton(onTap: (){
                            /*
         /////////////////////////////////////////////////////////////////////////////////////////

          Linkedin LOGIN ON TAP

          ////////////////////////////////////////////////////////////////////////////////////////
      */





                          }, icon: "assets/icons/linkedin_icon.svg")
                      )
                    ],
                  )

              ),



              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(55, 0, 55,10.h),
                      child: Center(
                        child: SizedBox(
                          height: 57.h,
                          width: 241.w,
                          child:  RichText(
                            textAlign: TextAlign.center,
                              text: TextSpan(
                                text: "By signing up, you confirm that you agree to our ",
                                style:  GoogleFonts.poppins(textStyle: TextStyle(
                              fontSize: 10.sp,fontWeight: FontWeight.w500,color: HexColor("#6A707C"))),
                                children: <TextSpan>[
                                  TextSpan(text: 'Terms Of Use ', style: TextStyle(color: Colors.red)),
                                  TextSpan(text: 'and have read and understood our ', style:  GoogleFonts.poppins(textStyle: TextStyle(
                                    fontSize: 10.sp,fontWeight: FontWeight.w500,color: HexColor("#6A707C"),
                                  ),
                                  ),
                                  ),
                                  TextSpan(text: 'Privacy Policy. ', style: TextStyle(fontSize:10.sp,color: Colors.red)),
                                    ],
                                  ),

                                  ),
                              ),
                            ),
                         // child:Text("By signing up, you confirm that you agree to our Terms Of Use and have read and understood our Privacy Policy.",textAlign: TextAlign.center,


                            )
                       ],
                ),
              ),
                      ),
    );
  }
}





