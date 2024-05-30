import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smoe_dashboard/customWidgets/custom_text.dart';

import '../core/constant/app_text_styles.dart';
import '../core/constant/appcolors.dart';

// ignore: must_be_immutable

// ignore: must_be_immutable
class CustomVisibility extends StatelessWidget {
  double widthContainer;
  double heightContainer;
  // ignore: non_constant_identifier_names
  bool thevisible;
  List<Widget> thechildren = <Widget>[];

  void Function() onTap;

  CustomVisibility(
      {super.key,
      required this.widthContainer,
      required this.heightContainer,
      required this.thevisible,
      required this.thechildren,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: thevisible,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          height: heightContainer.h,
          width: widthContainer.w,
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(10)),
          child: SingleChildScrollView(
              child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: thechildren,
              ),
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: onTap,
                  child: Container(
                    alignment: Alignment.center,
                    width: 10.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                        color: AppColors.redColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                        )),
                    child: Center(
                      child: TextCustom(
                          theText: "X",
                          fontSizeWidth: 5.sp,
                          fontFamily: AppTextStyles.Almarai,
                          fontColor: AppColors.whiteColor,
                          height: 1.h),
                    ),
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
