//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType type;
  final bool obscured;

  const CustomTextField({Key? key, required this.controller, required this.hintText, required this.type, required this.obscured}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    /*
    return SizedBox(
      width: 500,
      height: 40.h,
      child: TextFormField(

        controller: controller,
        style: TextStyle(fontSize: 12.sp, color: Colors.black),
        decoration: InputDecoration(

            hintText: hintText,
          hintStyle: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 11.h, color: HexColor("#8391A1"))),
            border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(8.0),
                ),
                borderSide: BorderSide(
                  color: HexColor("#E8ECF4"),

                )

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
        validator: (val){
          if(val == null||val.isEmpty){
            return 'Enter your $hintText';
          }
          return null;
        },
      ),
    );
    */
    return SizedBox(
      width: 500,
      height: 45.h,
      child: TextFormField(

        controller: controller,
        keyboardType: type,
        obscureText: obscured,

        style: TextStyle(fontSize: 12.h, color: Colors.black),
        decoration: InputDecoration(

          hintText: hintText,

          errorStyle: const TextStyle( color: Colors.transparent, fontSize: 0, height: 0),
          hintStyle: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 11.h, color: HexColor("#8391A1"))),
          contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
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
