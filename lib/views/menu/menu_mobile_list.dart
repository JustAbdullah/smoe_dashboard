/*import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import '../../core/constant/app_text_styles.dart';
import '../../core/constant/appcolors.dart';
import '../../core/constant/images_path.dart';
import '../../customWidgets/custom_visibility_black_background.dart';
class MenuMobileList extends StatelessWidget {
  const MenuMobileList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GetX<HomeController>(
            builder: (controller) => CustomVisibilityBlackBackGround(
                thevisible: controller.showMenuMobile.value,
                color: Colors.black38)),
        GetX<HomeController>(
            builder: (controller) => CustomVisibilityBlackBackGround(
                thevisible: controller.showMenuMobile.value,
                color: Colors.black38)),
        GetX<HomeController>(
          builder: (controller) => Visibility(
              visible: controller.showMenuMobile.value,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    color: Color(0xFF171821),
                    height: MediaQuery.of(context).size.height,
                    width: 140.w,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: SingleChildScrollView(
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Column(children: [
                            Column(
                              children: [
                                Image.asset(
                                  ImagesPath.logo,
                                  width: 30.w,
                                ),
                                Text("الجالية الاسطنبولية",
                                    style: TextStyle(
                                        color: AppColors.yellowColor,
                                        fontFamily: AppTextStyles.Almarai,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            InkWell(
                              onTap: () {
                                controller.GoToHomeMenu();
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 70.w,
                                decoration: BoxDecoration(
                                    color: controller.countTheMenu.value == 0
                                        ? Colors.yellow
                                        : Color(0xFF171821),
                                    borderRadius: BorderRadius.circular(3)),
                                child: Text(
                                  "الرئيسية",
                                  style: TextStyle(
                                    color: controller.countTheMenu.value == 0
                                        ? Colors.black
                                        : AppColors.whiteColor,
                                    fontFamily: AppTextStyles.Almarai,
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            InkWell(
                              onTap: () {
                                controller.GoToUsers();
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 70.w,
                                decoration: BoxDecoration(
                                    color: controller.countTheMenu.value == 1
                                        ? Colors.yellow
                                        : Color(0xFF171821),
                                    borderRadius: BorderRadius.circular(3)),
                                child: Text(
                                  "المستخدمين",
                                  style: TextStyle(
                                    color: controller.countTheMenu.value == 1
                                        ? Colors.black
                                        : AppColors.whiteColor,
                                    fontFamily: AppTextStyles.Almarai,
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            InkWell(
                                onTap: () {
                               
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 70.w,
                                  decoration: BoxDecoration(
                                      color: controller.countTheMenu.value == 2
                                          ? Colors.yellow
                                          : Color(0xFF171821),
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Text(
                                    "دليل الاعمال",
                                    style: TextStyle(
                                      color: controller.countTheMenu.value == 2
                                          ? Colors.black
                                          : AppColors.whiteColor,
                                      fontFamily: AppTextStyles.Almarai,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                            SizedBox(
                              height: 30.h,
                            ),
                            InkWell(
                                onTap: () {
                                  controller.GoToWorks();
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 70.w,
                                  decoration: BoxDecoration(
                                      color: controller.countTheMenu.value == 3
                                          ? Colors.yellow
                                          : Color(0xFF171821),
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Text(
                                    "الاعلانات والاعمال",
                                    style: TextStyle(
                                      color: controller.countTheMenu.value == 3
                                          ? Colors.black
                                          : AppColors.whiteColor,
                                      fontFamily: AppTextStyles.Almarai,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                            SizedBox(
                              height: 30.h,
                            ),
                            InkWell(
                                onTap: () {
                                  controller.GoToCv();
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 70.w,
                                  decoration: BoxDecoration(
                                      color: controller.countTheMenu.value == 4
                                          ? Colors.yellow
                                          : Color(0xFF171821),
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Text(
                                    "سير الجالية",
                                    style: TextStyle(
                                      color: controller.countTheMenu.value == 4
                                          ? Colors.black
                                          : AppColors.whiteColor,
                                      fontFamily: AppTextStyles.Almarai,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                            SizedBox(
                              height: 30.h,
                            ),
                            InkWell(
                                onTap: () {
                                  controller.GoToAsk();
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 70.w,
                                  decoration: BoxDecoration(
                                      color: controller.countTheMenu.value == 5
                                          ? Colors.yellow
                                          : Color(0xFF171821),
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Text(
                                    "أسئل الجالية",
                                    style: TextStyle(
                                      color: controller.countTheMenu.value == 5
                                          ? Colors.black
                                          : AppColors.whiteColor,
                                      fontFamily: AppTextStyles.Almarai,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                            SizedBox(
                              height: 30.h,
                            ),
                            InkWell(
                                onTap: () {
                                  controller.GoToNoti();
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 70.w,
                                  decoration: BoxDecoration(
                                      color: controller.countTheMenu.value == 6
                                          ? Colors.yellow
                                          : Color(0xFF171821),
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Text(
                                    "اشعارات الجالية",
                                    style: TextStyle(
                                      color: controller.countTheMenu.value == 6
                                          ? Colors.black
                                          : AppColors.whiteColor,
                                      fontFamily: AppTextStyles.Almarai,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                            SizedBox(
                              height: 30.h,
                            ),
                            InkWell(
                              onTap: () {
                                controller.GoToComm();
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 70.w,
                                decoration: BoxDecoration(
                                    color: controller.countTheMenu.value == 7
                                        ? Colors.yellow
                                        : Color(0xFF171821),
                                    borderRadius: BorderRadius.circular(3)),
                                child: Text(
                                  "منصات الجالية",
                                  style: TextStyle(
                                    color: controller.countTheMenu.value == 7
                                        ? Colors.black
                                        : AppColors.whiteColor,
                                    fontFamily: AppTextStyles.Almarai,
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            InkWell(
                              onTap: () {
                                controller.GoToAct();
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 70.w,
                                decoration: BoxDecoration(
                                    color: controller.countTheMenu.value == 8
                                        ? Colors.yellow
                                        : Color(0xFF171821),
                                    borderRadius: BorderRadius.circular(3)),
                                child: Text(
                                  "نشاطات الجالية",
                                  style: TextStyle(
                                    color: controller.countTheMenu.value == 8
                                        ? Colors.black
                                        : AppColors.whiteColor,
                                    fontFamily: AppTextStyles.Almarai,
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            InkWell(
                              onTap: () {
                                controller.showMenuMobile.value = false;
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 70.w,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(3)),
                                child: Text(
                                  "إخفاء",
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontFamily: AppTextStyles.Almarai,
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ),
                ),
              )),

          /////////////
        )
      ],
    );
  }
}
*/