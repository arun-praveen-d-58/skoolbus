import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:skoolbus/common/custom_outLineButton.dart';

import '../common/custom_button.dart';
import 'loginScreen.dart';

class ConfirmationScreen extends StatefulWidget {
  static const String routeName = '/confirmation-screen';
  const ConfirmationScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmationScreen> createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 90.h,
            width: 90.h,

            child: Stack(
                children:[
                  SizedBox(
                    width: 90.h,
                    height: 90.h,
                    child: Image.asset(
                        "assets/icons/ellipse.png",

                    ),
                  )      ,
                  Center(
                    child: SvgPicture.asset(
                      'assets/icons/tick.svg',
                      width: 25.w,
                      height: 25.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ]
            ),
          ),
          SizedBox(height: 25.h,),
          SizedBox(
            width:500.w,
            child: Center(
              child: Text(
                'Password Changed!',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600
                    )
                ),
              ),
            ),
          ),
            SizedBox(height: 8.h,),
            SizedBox(
              width: 200.w,
              child: Center(
                child: Text(
                    "Your password has been changed successfully.",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 12.h,
                            fontWeight: FontWeight.w400,
                          color: HexColor("#6A707C"),
                        ),

                    ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

          Padding(
            padding: EdgeInsets.only(left: 29,right: 29,top: 40.h,bottom: 20),
            child: CustomButton(text: "Back to Login", onTap: (){
              /*
         /////////////////////////////////////////////////////////////////////////////////////////

          Back to login ON TAP

          ////////////////////////////////////////////////////////////////////////////////////////
                   */
              Navigator.of(context).popUntil((route){
                return route.settings.name == LoginScreen.routeName;
              });

            }, color: HexColor("#12A35C"), TextColor: HexColor("#FFFFFF")),
          )

        ],
      ),
     ),
    );
  }
}

