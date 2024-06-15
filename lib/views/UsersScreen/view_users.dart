import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smoe_dashboard/controllers/home_controller.dart';
import 'package:smoe_dashboard/views/menu/menu.dart';
import 'package:shimmer/shimmer.dart';

import '../../core/constant/app_text_styles.dart';
import '../../core/constant/appcolors.dart';
import '../../core/constant/images_path.dart';
import '../../core/data/model/users.dart';
import '../../customWidgets/custom_container.dart';
import '../../customWidgets/custom_container_api.dart';
import '../../customWidgets/custom_padding.dart';
import '../../customWidgets/custom_text.dart';
import '../../customWidgets/search_text_filed.dart';
import '../../responsive_screen.dart';

class ViewUsers extends StatelessWidget {
  const ViewUsers({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
        body: Directionality(
      textDirection: TextDirection.rtl,
      child: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child:
                  ///////////////////////Row Show Te menu and The Context OF Page,,,,,,,,,,..............

                  Directionality(
                textDirection: TextDirection.rtl,
                child: Row(children: [
                  ResponsiveTheScreen(desktop: Menu(), mobile: Menu()),
                  SizedBox(
                    width: 00.w,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    alignment: Alignment.topCenter,
                    child: ////////////////////////Single Of Show All Context Of Page.................../////////

                        SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: PaddingCustom(
                                theTop: 10,
                                theRight: 00,
                                child: TextCustom(
                                    height: 1.5,
                                    theText: "واجهة المستخدمين الرئيسية",
                                    fontSizeWidth: 8.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: AppTextStyles.Almarai,
                                    fontColor: AppColors.yellowColor),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: PaddingCustom(
                                theTop: 5,
                                theRight: 0,
                                child: TextCustom(
                                    height: 1.5,
                                    theText:
                                        "معلومات واحصائيات شاملة عن المستخدمين الرئيسية المتوفرة في قاعدة البيانات",
                                    fontSizeWidth: 4.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: AppTextStyles.Almarai,
                                    fontColor: AppColors.balckColorTypeThree),
                              ),
                            ),
                            SizedBox(
                                width: 140.w,
                                child: GetX<HomeController>(
                                  builder: (controller) =>
                                      TextFormFiledCustomSearch(
                                    labelData: "عملية البحث في الصفوف",
                                    hintData: "ادخل أسم المسؤول",
                                    iconData:
                                        controller.TheResultNameSearch.value ==
                                                true
                                            ? Icons.close
                                            : Icons.search,
                                    controllerData:
                                        homeController.searchingName,
                                    value: (value) {
                                      controller.nameSearching =
                                          value.toString();
                                      return value;
                                    },
                                    fillColor: AppColors.whiteColor,
                                    hintColor: AppColors.balckColorTypeThree,
                                    iconColor:
                                        controller.isSearchingName.value == true
                                            ? AppColors.redColor
                                            : AppColors.balckColorTypeThree,
                                    borderSideColor: AppColors.blackColor,
                                    onTap: () {
                                      controller.searchFlutter();
                                    },
                                    fontColor: AppColors.balckColorTypeThree,
                                    obscureText: false,
                                    keyboardType: TextInputType.text,
                                    autofillHints: [AutofillHints.name],
                                    onChanged: (value) {
                                      controller.isSearchingName.value = true;
                                      controller.nameSearching =
                                          value.toString();
                                      return value;
                                    },
                                    validator: (p0) {},
                                  ),
                                )),
                            Align(
                                alignment: Alignment.topCenter,
                                child: PaddingCustom(
                                    theTop: 15,
                                    theRight: 00,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.70,
                                        height:
                                            MediaQuery.of(context).size.height,
                                        child: ////////////////////////Single Of Show All DataBase APi Context Of Page.................../////////
                                            SingleChildScrollView(
                                          child: Column(children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 50.h,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 40.w,
                                                      child: TextCustom(
                                                          theText: "المعرف",
                                                          fontSizeWidth: 5.2.sp,
                                                          fontFamily:
                                                              AppTextStyles
                                                                  .Almarai,
                                                          fontColor: AppColors
                                                              .balckColorTypeThree,
                                                          height: 1.5.h),
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 40.w,
                                                      child: TextCustom(
                                                          theText:
                                                              "اسم المستخدم",
                                                          fontSizeWidth: 5.2.sp,
                                                          fontFamily:
                                                              AppTextStyles
                                                                  .Almarai,
                                                          fontColor: AppColors
                                                              .balckColorTypeThree,
                                                          height: 1.5.h),
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 40.w,
                                                      child: TextCustom(
                                                          theText: "رقم الهاتف",
                                                          fontSizeWidth: 5.2.sp,
                                                          fontFamily:
                                                              AppTextStyles
                                                                  .Almarai,
                                                          fontColor: AppColors
                                                              .balckColorTypeThree,
                                                          height: 1.5.h),
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 30.w,
                                                      child: TextCustom(
                                                          theText:
                                                              "تاريخ الإنضمام",
                                                          fontSizeWidth: 5.2.sp,
                                                          fontFamily:
                                                              AppTextStyles
                                                                  .Almarai,
                                                          fontColor: AppColors
                                                              .balckColorTypeThree,
                                                          height: 1.5.h),
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 40.w,
                                                      child: TextCustom(
                                                          theText: "التحكم",
                                                          fontSizeWidth: 5.2.sp,
                                                          fontFamily:
                                                              AppTextStyles
                                                                  .Almarai,
                                                          fontColor: AppColors
                                                              .balckColorTypeThree,
                                                          height: 1.5.h),
                                                    ),
                                                  ]),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 0.1.h,
                                              color:
                                                  AppColors.balckColorTypeThree,
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height,
                                              child: GetX<HomeController>(
                                                builder: (controller) => FutureBuilder<
                                                        List<Users>>(
                                                    future: controller
                                                                .TheResultNameSearch
                                                                .value ==
                                                            true
                                                        ? controller
                                                            .searchinfUserName(
                                                                controller
                                                                    .nameSearching
                                                                    .toString())
                                                        : homeController
                                                            .getDataUsersFromDatabase(),
                                                    builder:
                                                        (BuildContext context,
                                                            AsyncSnapshot
                                                                snapshot) {
                                                      if (snapshot.hasData) {
                                                        return controller
                                                                    .noDataSearching
                                                                    .value ==
                                                                false
                                                            ? Center(
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    TextCustom(
                                                                        height: 1.3
                                                                            .h,
                                                                        theText:
                                                                            "لايوجد هنالك بيانات من عملية البحث",
                                                                        fontSizeWidth:
                                                                            15,
                                                                        fontFamily:
                                                                            AppTextStyles
                                                                                .Almarai,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontColor:
                                                                            AppColors.theAppColorBlue),
                                                                  ],
                                                                ),
                                                              )
                                                            : ListView.builder(
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis
                                                                        .vertical,
                                                                itemCount:
                                                                    snapshot
                                                                        .data!
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        index) {
                                                                  Users user =
                                                                      snapshot.data![
                                                                          index];

                                                                  return Column(
                                                                    children: [
                                                                      Container(
                                                                        width: MediaQuery.of(context)
                                                                            .size
                                                                            .width,
                                                                        height:
                                                                            50.h,
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsets.symmetric(
                                                                              horizontal: 10.w,
                                                                              vertical: 10.h),
                                                                          child: Row(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Container(
                                                                                  alignment: Alignment.center,
                                                                                  width: 40.w,
                                                                                  child: TextCustom(theText: user.id, fontSizeWidth: 5.2.sp, fontFamily: AppTextStyles.Almarai, fontColor: AppColors.balckColorTypeThree, height: 1.5.h),
                                                                                ),
                                                                                SizedBox(
                                                                                  width: 5.w,
                                                                                ),
                                                                                Container(
                                                                                  alignment: Alignment.center,
                                                                                  width: 40.w,
                                                                                  child: TextCustom(theText: user.name, fontSizeWidth: 5.2.sp, fontFamily: AppTextStyles.Almarai, fontColor: AppColors.balckColorTypeThree, height: 1.5.h),
                                                                                ),
                                                                                SizedBox(
                                                                                  width: 5.w,
                                                                                ),
                                                                                Container(
                                                                                  alignment: Alignment.center,
                                                                                  width: 40.w,
                                                                                  child: TextCustom(theText: user.phone, fontSizeWidth: 5.2.sp, fontFamily: AppTextStyles.Almarai, fontColor: AppColors.balckColorTypeThree, height: 1.5.h),
                                                                                ),
                                                                                SizedBox(
                                                                                  width: 5.w,
                                                                                ),
                                                                                Container(
                                                                                  alignment: Alignment.center,
                                                                                  width: 30.w,
                                                                                  child: TextCustom(theText: user.date, fontSizeWidth: 5.2.sp, fontFamily: AppTextStyles.Almarai, fontColor: AppColors.balckColorTypeThree, height: 1.5.h),
                                                                                ),
                                                                                SizedBox(
                                                                                  width: 5.w,
                                                                                ),
                                                                                InkWell(
                                                                                    onTap: () {
                                                                                      homeController.ofIdMainTypeDeleteOrEdit = user.id;
                                                                                      homeController.showMore.value = true;
                                                                                    },
                                                                                    child: Container(
                                                                                      decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(3)),
                                                                                      alignment: Alignment.center,
                                                                                      width: 40.w,
                                                                                      child: TextCustom(theText: "إدارة", fontSizeWidth: 5.2.sp, fontFamily: AppTextStyles.Almarai, fontColor: AppColors.whiteColor, height: 1.5.h),
                                                                                    )),
                                                                              ]),
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height:
                                                                            10.h,
                                                                      ),
                                                                      Container(
                                                                        width: MediaQuery.of(context).size.width -
                                                                            20,
                                                                        height:
                                                                            0.1.h,
                                                                        color: AppColors
                                                                            .balckColorTypeThree,
                                                                      ),
                                                                    ],
                                                                  );
                                                                });
                                                      } else {
                                                        return ListView.builder(
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount: 5,
                                                            shrinkWrap: true,
                                                            itemBuilder:
                                                                (context, i) {
                                                              return Shimmer
                                                                  .fromColors(
                                                                      baseColor: Color.fromARGB(
                                                                          31,
                                                                          169,
                                                                          167,
                                                                          167),
                                                                      highlightColor:
                                                                          AppColors
                                                                              .whiteColor,
                                                                      enabled:
                                                                          true,
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.symmetric(horizontal: 10.h),
                                                                        child:
                                                                            PaddingCustom(
                                                                          theBottom:
                                                                              10,
                                                                          child:
                                                                              ContainerCustom(
                                                                            theBorderRadius:
                                                                                10,
                                                                            colorContainer:
                                                                                AppColors.whiteColor,
                                                                            heigthContainer:
                                                                                130,
                                                                            widthContainer:
                                                                                MediaQuery.sizeOf(context).width,
                                                                            child:
                                                                                SingleChildScrollView(
                                                                              scrollDirection: Axis.horizontal,
                                                                              child: Row(
                                                                                children: [
                                                                                  Row(
                                                                                    children: [
                                                                                      Column(
                                                                                        children: [
                                                                                          InkWell(
                                                                                            onTap: () {},
                                                                                            child: Image.asset(
                                                                                              "${ImagesPath.logo}",
                                                                                              width: 100,
                                                                                              height: 100,
                                                                                              fit: BoxFit.contain,
                                                                                            ),
                                                                                          ),
                                                                                          SizedBox(
                                                                                            height: 10.h,
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 5.w,
                                                                                  ),
                                                                                  Column(
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: Alignment.topCenter,
                                                                                        child: PaddingCustom(
                                                                                          theTop: 30,
                                                                                          child: TextCustom(
                                                                                            height: 1.5.h,
                                                                                            theText: "يتم التحميل",
                                                                                            fontColor: AppColors.blackColor,
                                                                                            fontFamily: AppTextStyles.Almarai,
                                                                                            fontSizeWidth: 6.sp,
                                                                                            fontWeight: FontWeight.bold,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 150.w,
                                                                                        height: 100.h,
                                                                                        child: PaddingCustom(
                                                                                          theTop: 15,
                                                                                          child: Text(
                                                                                            "يتم التحميل",
                                                                                            maxLines: 4,
                                                                                            style: TextStyle(fontSize: 14.sp, height: 1.7.h, color: AppColors.balckColorTypeThree, fontFamily: AppTextStyles.Almarai),
                                                                                            textAlign: TextAlign.center,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsets.symmetric(vertical: 10.h),
                                                                                    child: Column(
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: Alignment.topCenter,
                                                                                          child: PaddingCustom(
                                                                                            theTop: 5,
                                                                                            child: ContainerCustomApi(
                                                                                              colorContainer: AppColors.theAppColorBlue,
                                                                                              theBorderRadius: 15,
                                                                                              heigthContainer: 15.h,
                                                                                              child: Padding(
                                                                                                padding: EdgeInsets.symmetric(horizontal: 8.h),
                                                                                                child: Text(
                                                                                                  "يتم التحميل",
                                                                                                  style: TextStyle(
                                                                                                    color: AppColors.blackColor,
                                                                                                    fontFamily: AppTextStyles.Almarai,
                                                                                                    fontSize: 14.sp,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ));
                                                            });
                                                      }
                                                    }),
                                              ),
                                            )
                                          ]),
                                        ),
                                      ),
                                      ///////////////End OF COntextOF API DataBase,,,,,,,,,,,,,,,..........
                                    ))),
                            SizedBox(
                              height: 10.h,
                            ),
                          ]),
                    ),
                  ),
                  ///////////////End OF COntextOF  Page,,,,,,,,,,,,,,,..........
                ]),
              ),
            ),
          ),
          ///////////////////Access Right............../////////////////////
          GetX<HomeController>(
              builder: (controller) => Visibility(
                  visible: controller.aboutAccessTheAdminMessage.value,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black38,
                  ))),
          GetX<HomeController>(
              builder: (controller) => Visibility(
                  visible: controller.aboutAccessTheAdminMessage.value,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black38,
                  ))),
          GetX<HomeController>(
              builder: (controller) => Visibility(
                  visible: controller.aboutAccessTheAdminMessage.value,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 100.w,
                      height: 120.h,
                      color: Colors.white,
                      child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              PaddingCustom(
                                theTop: 00,
                                theRight: 00,
                                child: InkWell(
                                  onTap: () {
                                    controller.aboutAccessTheAdminMessage
                                        .value = false;
                                  },
                                  child: Container(
                                      alignment: Alignment.center,
                                      width: 17.w,
                                      height: 25.h,
                                      decoration: BoxDecoration(
                                        color: AppColors.redColor,
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      child: Text(
                                        "X",
                                        style: TextStyle(
                                          color: AppColors.whiteColor,
                                          fontFamily: AppTextStyles.Almarai,
                                          fontSize: 5.sp,
                                        ),
                                      )),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: PaddingCustom(
                                  theTop: 40,
                                  theRight: 00,
                                  child: TextCustom(
                                      height: 1.5,
                                      theText:
                                          "المعذرة..لاتمتلك الصلاحيات للقيام بهذة العملية",
                                      fontSizeWidth: 4.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: AppTextStyles.Almarai,
                                      fontColor: AppColors.balckColorTypeThree),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ))),
        ],
      ), ///////////////End OF Menu And  Page,,,,,,,,,,,,,,,..........
    ));
  }
}
