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
import 'package:skoolbus/screens/forgetPasswordScreen.dart';
import 'package:skoolbus/screens/registerScreen.dart';
import 'package:skoolbus/screens/welcomeScreen.dart';
class LoginScreen extends StatefulWidget {
  static const String routeName = '/login-screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _LoginFormKey = GlobalKey<FormState>();
  final _RegisterFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
/*
  @override
  void LoginInUser(){
    LoginService.signInUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,

    );
*/

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

              Text("Don't have an account? ",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: HexColor("#1E232C"),

                    )
                ),
              ),


              GestureDetector(
                child: Text("Register Now",
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

          register now ON TAP

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

          child: FooterView(

          footer: Footer(
            backgroundColor: Colors.white,
            padding: EdgeInsets.only(left: 0,right: 0,top: 0,bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text("Don't have an account? ",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: HexColor("#1E232C"),

                    )
                ),
              ),


              GestureDetector(
                child: Text("Register Now",
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

          register now ON TAP

          ////////////////////////////////////////////////////////////////////////////////////////
      */
             //     Navigator.pushNamedAndRemoveUntil(context, RegisterScreen.routeName, (route) => false);

                      Navigator.pushNamed(context, RegisterScreen.routeName);
                },
              ),
            ],
          ),


        ),

              children: [
          SingleChildScrollView(

              child:  Column(
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
                                Container(
                                  height: 40.h,
                                  width: 40.h,
                                  color: Colors.white,
                                  child: CustomPushBackButton(onTap: (){
                                    /*
         /////////////////////////////////////////////////////////////////////////////////////////

          pushback ON TAP

          ////////////////////////////////////////////////////////////////////////////////////////
      */


                                    //Navigator.pushNamedAndRemoveUntil(context, WelcomeScreen.routeName, (route) => false);
                                  //  Navigator.restorablePopAndPushNamed(context, WelcomeScreen.routeName);
                                    Navigator.pop(context);
                                   },),
                                )
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
                          'Welcome back!',
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
                          'Glad to see you, Again!',
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
                      key: _LoginFormKey,

                      child: Column(
                        children: [
                          Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30,10.h),
                                  child: CustomTextField(controller: _emailController, hintText: "Enter your email", type: TextInputType.emailAddress,obscured: false,),
                          ),


                   Padding(
                       padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 11.h),
                   // child: CustomTextField(controller: _passwordController,hintText: "Enter your password", type: TextInputType.text,obscured: true,),
                   child: CustomPasswordTextField(controller: _passwordController,hintText: "Enter your password", type: TextInputType.text,),

                   ),

                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30,10.h),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              child: SizedBox(
                                height: 22.h,
                                child: Text("Forgot Password?",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,
                                          color: HexColor("#6A707C"),

                                      ),
                                  ),
                        ),

                              ),
                              onTap: (){
                                /*
         /////////////////////////////////////////////////////////////////////////////////////////

          Forgot password ON TAP

          ////////////////////////////////////////////////////////////////////////////////////////
      */


                              //  Navigator.pushNamedAndRemoveUntil(context, ForgetPasswordScreen.routeName, (route) => false);
                                Navigator.pushNamed(context, ForgetPasswordScreen.routeName);

                              },
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 25.h),
                        child: CustomButton(text: "Login", onTap: (){
                          /*
         /////////////////////////////////////////////////////////////////////////////////////////

          LOGIN ON TAP

          ////////////////////////////////////////////////////////////////////////////////////////
      */                if(_passwordController.text.isEmpty || _emailController.text.isEmpty) {
                            final snackBar = SnackBar(
                              content: const Text(
                                  'Please enter all the fields'),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(
                                snackBar);
                          }
                          if(_LoginFormKey.currentState!.validate()){
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
                                )
                                ),
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
                              padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30,0) ,
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

          google LOGIN ON TAP

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

          linkedin LOGIN ON TAP

          ////////////////////////////////////////////////////////////////////////////////////////
      */



                                      }, icon: "assets/icons/linkedin_icon.svg")
                                  )
                                ],
                              )

                          ),
                          // ),




                    ////////
        ],



    ),

                    ),

],
            ),










      ),
    );
  }
}

class CustomPasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType type;


  const CustomPasswordTextField({Key? key, required this.controller, required this.hintText, required this.type}) : super(key: key);


  @override
  State<CustomPasswordTextField> createState() => _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
   bool obscured = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 45.h,
      child: TextFormField(

        controller: widget.controller,
        keyboardType: widget.type,
        obscureText: obscured,

        style: TextStyle(fontSize: 12.h, color: Colors.black),
        decoration: InputDecoration(

          hintText: widget.hintText,

          errorStyle: const TextStyle( color: Colors.transparent, fontSize: 0, height: 0),
          hintStyle: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 11.h, color: HexColor("#8391A1"))),
          contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
          suffixIcon: GestureDetector(
            onTap: (){
              setState(() {
                obscured = !obscured;
              });

            },
            child: Icon(obscured? Icons.visibility_outlined:Icons.visibility_off_outlined,size: 20.sp,),
          ),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              color: HexColor("#E8ECF4"),

            ),


          ),

          enabledBorder: OutlineInputBorder(

              borderRadius: const BorderRadius.all(
                const Radius.circular(8.0),
              ),
              borderSide:BorderSide(
                color: HexColor("#E8ECF4"),
              )
          ),

          focusedBorder: OutlineInputBorder(

              borderRadius: const BorderRadius.all(
                const Radius.circular(8.0),
              ),
              borderSide:BorderSide(
                color: HexColor("#E8ECF4"),
              )
          ),

        ),

      ),
    );
  }
}









