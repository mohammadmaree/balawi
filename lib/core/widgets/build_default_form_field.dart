import 'package:balawi/core/resources/color.dart';
import 'package:balawi/core/resources/constants.dart';
import 'package:balawi/core/util/ui_responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BuildDefaultFormField extends StatelessWidget {
  final TextEditingController controller;
  final String huntText;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  String? label;
  bool? hidePassword;
  Widget? suffixIcon;
  VoidCallback? onChanged;
  bool? isValid;
  bool? enabled;
  int? maxLength;
  Color? textColor;

  BuildDefaultFormField({
    required this.controller,
    required this.huntText,
    required this.textInputType,
    required this.textInputAction,
    this.label,
    this.hidePassword,
    this.suffixIcon,
    this.onChanged,
    this.isValid,
    this.enabled,
    this.maxLength,
    this.textColor
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled??true,
      style: textColor!=null?TextStyle(
        color: textColor!,
      ):null,
      controller:controller,
      keyboardType:textInputType,
      textInputAction: textInputAction,
      obscureText:hidePassword??false,
      inputFormatters: maxLength!=null?[
        LengthLimitingTextInputFormatter(maxLength), // Limit to 12 characters
      ]:null,
      decoration: InputDecoration(
        //    label: label!=null?label!:SizedBox(),
        labelText: label,
        labelStyle:TextStyle(
          color: PrimaryColors.hint,
          fontSize: UiResponsive.dimension_14,
          fontWeight: FontWeight.w400,
        ),
        hintText: huntText,
        hintStyle: TextStyle(color: Colors.grey, fontSize: UiResponsive.screenWidth!*0.039,fontWeight: FontWeight.w400,fontFamily: TAJAWAL),
        contentPadding:EdgeInsetsDirectional.only(start:UiResponsive.screenWidth!*0.05,top: UiResponsive.screenHeight!*0.019,bottom: UiResponsive.screenHeight!*0.019),
        //border: InputBorder.none,
        suffixIcon:suffixIcon?? SizedBox(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(UiResponsive.dimension_11),
          borderSide: BorderSide(
              color: (isValid??true)?PrimaryColors.grey:PrimaryColors.error,width: 0.6
          ),
        ),
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(UiResponsive.dimension_11),
          borderSide: BorderSide(
              color: (isValid??true)?PrimaryColors.grey:PrimaryColors.error,width: 0.6
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(UiResponsive.dimension_11),
          borderSide: BorderSide(
              color: (isValid??true)?PrimaryColors.grey:PrimaryColors.error,width: 0.6
          ),
        ),
      ),
      onChanged: (value){
        if(onChanged!=null){
          onChanged!();
        }
      },
    );
  }
}

