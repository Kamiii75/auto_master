import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomSuffixIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CustomSuffixIcon({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.sp),
      child: IconButton(
        splashColor: Colors.transparent,
        icon: Icon(
          icon,
          color: const Color(0xffA8A8A8).withOpacity(0.7),
          size: 20.sp,
        ),
        onPressed: onPressed,
      ),
    );
  }
}