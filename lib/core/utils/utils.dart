import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/default_buttton.dart';
import '../constant/colors.dart';
import '../constant/text_style.dart';

abstract class Utils {
  static void okAlertDialog(BuildContext context, String text,
      [VoidCallback? onPress]) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)), //this right here
            child: Container(
              height: 23.h,
              width: 90.h,
              decoration: BoxDecoration(
                  color: AppColors.dialogBoxBackgroundColor,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: 5.w, top: 2.5.h, left: 5.w, bottom: 2.h),
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                      style: dialogboxText.copyWith(
                          fontSize: 16.sp, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 45.w,
                    height: 8.h,
                    child: DefaultButton(
                      onTap: onPress ??
                              () {
                            Navigator.pop(context);
                          },
                      text: 'OK',
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}