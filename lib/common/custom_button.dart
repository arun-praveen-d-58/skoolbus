import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color color;
  final Color TextColor;
  const CustomButton({Key? key, required this.text, required this.onTap, required this.color, required this.TextColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap,
        child: Text(text,style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16.sp,
          color: TextColor,fontWeight: FontWeight.w600
        )),),style:ElevatedButton.styleFrom(
        minimumSize: Size(500,45.h),primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        )

    ),

    );
  }
}
