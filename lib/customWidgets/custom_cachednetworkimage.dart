import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/constant/app_text_styles.dart';
import '../core/constant/appcolors.dart';
import '../customWidgets/custom_container.dart';
import '../customWidgets/custom_text.dart';

// ignore: must_be_immutable
class CustomCachedNetworkImage extends StatelessWidget {
  String urlTheImage;
  final double width;
  final double height;
  final BoxFit boxFit;

  CustomCachedNetworkImage({
    super.key,
    required this.urlTheImage,
    required this.width,
    required this.height,
    required this.boxFit,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        width: width.w,
        height: height.h,
        fit: boxFit,
        imageUrl: urlTheImage,
        imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: imageProvider,
                  fit: boxFit,
                ),
              ),
            ),
        placeholder: (context, url) => SizedBox(
            child: ContainerCustom(
                colorContainer: AppColors.theAppColorBlue,
                heigthContainer: height.h,
                widthContainer: width.w,
                child: TextCustom(
                    height: 1.5.h,
                    theText: "jalia",
                    fontSizeWidth: 20,
                    fontFamily: AppTextStyles.Marhey,
                    fontColor: AppColors.blackColor))));
  }
}
