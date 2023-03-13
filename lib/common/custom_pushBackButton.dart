import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomPushBackButton extends StatelessWidget {
  final VoidCallback onTap;
  const CustomPushBackButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: 40.h,
        width: 40.h,
       color: Colors.white,
      child: TextButton(
        onPressed:onTap,
        style: ButtonStyle(

              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(13.r)),
                      side: BorderSide( color: HexColor("#E8ECF4"),)
                  )
              )

          ),

          //foregroundColor: MaterialStateProperty.all(darkTextColor),
         // padding: MaterialStateProperty.all(EdgeInsets.all(1)),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Image.asset('assets/icons/arrow.png',
             width: 15.w,
               height: 15.h,
             ),

          ],
        ),
      ),
      ),
    );
  }
}
