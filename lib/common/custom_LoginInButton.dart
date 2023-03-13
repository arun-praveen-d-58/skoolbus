import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  final String icon;

  const CustomLoginButton({Key? key, required this.onTap, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final suff = icon.split(".");
    return Scaffold(

      body: Container(
          width: 90.w,
          height: 40.h,
          color: Colors.white,
          child: TextButton(
            onPressed:onTap,
            style: ButtonStyle(

                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.r)),
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
            suff.contains("png")? Image.asset(icon,height: 15.h,width: 15.w,): SvgPicture.asset(icon,height: 15.h,width: 15.w,)
              ]
            ),
          ),
        ),

    );
  }
}
