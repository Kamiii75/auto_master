import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constant/colors.dart';
import '../../core/constant/text_style.dart';

class DefaultTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final String? labelText;
  final int? minLines;
  final int? maxLines;
  final bool readOnly;
  final bool? enabled;
  final TextCapitalization textCapitalization;
  final Widget? suffixIcon;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  double? buttonHeight;
  double? buttonWidth;
  int? textlength;

  String inputformatername;

  DefaultTextField({
    this.controller,
    this.hintText,
    this.obscureText = false,
    this.validator,
    this.keyboardType,
    this.labelText,
    this.minLines,
    this.maxLines,
    this.readOnly = false,
    this.enabled,
    this.textCapitalization = TextCapitalization.sentences,
    this.suffixIcon,
    this.textStyle,
    this.hintStyle,
    this.buttonHeight,
    this.buttonWidth,
    this.textlength,
    this.inputformatername = "[A-Za-z0-9@-_/.,|. : ']",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight,

      margin: EdgeInsets.only(bottom: 2.h),
      decoration: BoxDecoration (
        color: AppColors.textfieldback,
        borderRadius:  BorderRadius.circular(15),
        boxShadow:  const [
          BoxShadow(
            color:  Color(0x1e000000),
            offset:  Offset(0, 4),
            blurRadius:  0.5,
          ),
        ],
      ),
      child: TextFormField(
        style: textStyle ?? textFieldStyle,
        enabled: enabled,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        inputFormatters: [
          FilteringTextInputFormatter.allow(
              RegExp(inputformatername.toString())),
        ],
        controller: controller,
        readOnly: readOnly,
        obscureText: obscureText,
        validator: validator,
        keyboardType: keyboardType,
        textCapitalization: textCapitalization,
        minLines: minLines,
        maxLines: maxLines,
        maxLength: textlength,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          counterText: "",

          hintStyle: hintStyle ?? textFieldHintStyle,
          contentPadding: EdgeInsets.only(left: 5.w, bottom: 3.5.h),
          fillColor: AppColors.textfiled,
          filled: true,

          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(10.0),
          //   borderSide: BorderSide(color: Colors.transparent),
          // ),
          // errorText: "abc",
          // errorStyle: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}