/*import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import '../../core/constant/app_text_styles.dart';
import '../../core/constant/appcolors.dart';
import '../../core/constant/images_path.dart';
import '../../customWidgets/custom_visibility_black_background.dart';

class MenuMobile extends StatelessWidget {
  const MenuMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(
        builder: (controller) => Visibility(
              visible: controller.menuTheMobile.value,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 580.h, right: 10.w),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {
                          controller.showMenuMobile.value = true;
                        },
                        child: Container(
                            width: 30.w,
                            height: 40.h,
                            color: Color(0xFF171821),
                            child: Center(
                              child: Image.asset(
                                ImagesPath.menu,
                                width: 20.w,
                                fit: BoxFit.contain,
                              ),
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }
}
*/