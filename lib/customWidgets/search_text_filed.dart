import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../core/constant/app_text_styles.dart';
import '../core/constant/appcolors.dart';

// ignore: must_be_immutable
class TextFormFiledCustomSearch extends StatelessWidget {
  final String labelData;
  final String hintData;
  final IconData iconData;
  final TextEditingController? controllerData;
  var fillColor;
  var hintColor;
  var iconColor;
  var borderSideColor;
  var fontColor;
  bool obscureText = true;
  TextInputType? keyboardType;
  Iterable<String>? autofillHints;
  void Function()? onTap;

//  final String? Function(String?) valid;

  final String? Function(String?) value;

  final String? Function(String?) onChanged;

  final String? Function(String?)? validator;
  TextFormFiledCustomSearch({
    super.key,
    required this.labelData,
    required this.hintData,
    required this.iconData,
    required this.controllerData,
    // required this.valid,
    required this.value,
    required this.fillColor,
    required this.hintColor,
    required this.iconColor,
    required this.borderSideColor,
    required this.fontColor,
    required this.obscureText,
    required this.keyboardType,
    required this.autofillHints,
    required this.onChanged,
    required this.validator,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        textDirection: TextDirection.rtl,
        autofillHints: autofillHints,
        keyboardType: keyboardType,
        obscureText: obscureText,
        controller: controllerData,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: onChanged,
        onSaved: value,
        validator: validator,
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor,
          hintText: hintData.tr,
          hintStyle: TextStyle(color: hintColor, fontSize: 4.sp),
          suffixIcon:
              InkWell(onTap: onTap, child: Icon(iconData, color: iconColor)),
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          label: Text(
            labelData,
          ),
          labelStyle: TextStyle(
            fontFamily: AppTextStyles.Almarai,
            color: fontColor,
            fontSize: 4.sp,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderSideColor, width: 2),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.theAppColorBlue, width: 2),
          ),
        ),
        style: TextStyle(
            fontFamily: AppTextStyles.Almarai,
            color: AppColors.theAppColorBlue),
      ),
    );
  }
}
