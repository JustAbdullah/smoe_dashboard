//import 'package:http/http.dart' as http;

import 'dart:convert';
import 'dart:math';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:smoe_dashboard/views/AdminView/admin_view.dart';
import 'package:smoe_dashboard/views/MainTypes/view_main_types.dart';
import 'package:smoe_dashboard/views/Products/view_products.dart';

import '../core/data/model/admin.dart';
import '../core/data/model/list_of_order.dart';
import '../core/data/model/maintype.dart';
import '../core/data/model/offers.dart';
import '../core/data/model/products.dart';
import '../core/data/model/users.dart';
import '../core/services/appservices.dart';
import '../linksapi.dart';
// ignore: library_prefixes

import '../core/class/class/crud.dart';
import 'package:path/path.dart' as Path;
import 'dart:io';

import '../views/Accounts/account_services_man.dart';
import '../views/Home/home_screen.dart';
import '../views/InvVeiw/inv_view.dart';
import '../views/Notice/notice_view.dart';
import '../views/NoticeServicesMan/notice_view_services.dart';
import '../views/Notifications/notifications.dart';
import '../views/OrdersView/orders_view.dart';
import '../views/ServicesMan/view_services_man.dart';
import '../views/offers/offer_view.dart';
import '../views/UsersScreen/view_users.dart';
import '../views/WalletView/view_wallte.dart';
import 'dart:html' as html;

class HomeController extends GetxController {
  final crud = Crud();
  AppServices appServices = Get.find();

///////////////////Get Data From DataBase ,,,,,,,,,,////////////////////

  Future<List<Users>> getDataUsersFromDatabase() async {
    final response = await http.get(Uri.parse(AppLinksApi.getUsers));

    if (response.statusCode == 200) {
      List<dynamic> UsersJson = json.decode(response.body)['data'];
      return UsersJson.map((json) => Users.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load user');
    }
  }

  Future<List<maintype>> getDataMainTypesDatabase() async {
    final response = await http.get(Uri.parse(AppLinksApi.getMainTypes));

    if (response.statusCode == 200) {
      List<dynamic> MaintypeJson = json.decode(response.body)['data'];
      return MaintypeJson.map((json) => maintype.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load mainType');
    }
  }

  Future<List<Products>> getDataProductsDatabase() async {
    final response = await http.get(Uri.parse(AppLinksApi.getProducts));

    if (response.statusCode == 200) {
      List<dynamic> ProductsJson = json.decode(response.body)['data'];
      return ProductsJson.map((json) => Products.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load Products');
    }
  }

  Future<List<offers>> getDataOffersFromDatabase() async {
    final response = await http.get(Uri.parse(AppLinksApi.getOffers));

    if (response.statusCode == 200) {
      List<dynamic> offersJson = json.decode(response.body)['data'];
      return offersJson.map((json) => offers.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load Offers');
    }
  }

  Future<List<Admin>> getDataAdminDatabase() async {
    final response = await http.get(Uri.parse(AppLinksApi.getAdminsData));

    if (response.statusCode == 200) {
      List<dynamic> AdminJson = json.decode(response.body)['data'];
      return AdminJson.map((json) => Admin.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load Admin');
    }
  }

  getDataNoticeDatabase() async {
    var response = await crud.postRequest(AppLinksApi.getNoticeData, {});

    if (response['status'] == "success") {
    } else {}
    return response;
  }

  getDataNoticeDatabaseServices() async {
    var response =
        await crud.postRequest(AppLinksApi.getNoticeDataServices, {});

    if (response['status'] == "success") {
    } else {}
    return response;
  }

  getDataInv() async {
    var response = await crud.postRequest(AppLinksApi.getInv, {});

    if (response['status'] == "success") {
    } else {}
    return response;
  }

  ///////////////////////get The  Orders............................./////////////

  Future<List<Order>> fetchOrders() async {
    final response = await http.get(Uri.parse(AppLinksApi.getAllOrder));

    if (response.statusCode == 200) {
      List<dynamic> ordersJson = json.decode(response.body)['data'];
      return ordersJson.map((json) => Order.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load orders');
    }
  }
  //////..............ONInit............................////////////////

  @override
  void onInit() {
    super.onInit();
  }

/////////////////Count Of Menu And show More In Pages,,,,,,,,,,,,,,,.......

  //////////////Nav The Pages........//////////

  RxInt countTheMenu = 0.obs;
  GoToHomeScreen() {
    showMore.value = false;
    Get.to(HomeScreen());
    searchingClearWhenMove();
    countTheMenu.value = 0;
  }

  GoToAdminScreen() {
    showMore.value = false;
    Get.to(ViewAdmin());
    searchingClearWhenMove();
    countTheMenu.value = 1;
  }

  GoToUsersScreen() {
    showMore.value = false;
    Get.to(ViewUsers());
    searchingClearWhenMove();
    countTheMenu.value = 2;
  }

  GoToMainTypesScreen() {
    showMore.value = false;
    Get.to(ViewMainTypes());
    searchingClearWhenMove();
    countTheMenu.value = 3;
  }

  GoToTHeProductsScreen() {
    showMore.value = false;
    Get.to(ProductsView());
    searchingClearWhenMove();
    countTheMenu.value = 4;
  }

  GoToOffers() {
    showMore.value = false;
    Get.to(ViewOffers());
    searchingClearWhenMove();
    countTheMenu.value = 5;
  }

  GoToNotificationsScreen() {
    showMore.value = false;
    searchingClearWhenMove();
    Get.to(Notifications());

    countTheMenu.value = 6;
  }

  GoToNoticeScreen() {
    showMore.value = false;
    searchingClearWhenMove();
    Get.to(NoticeView());

    countTheMenu.value = 7;
  }

  GoToServicesMan() {
    showMore.value = false;
    searchingClearWhenMove();
    Get.to(ViewServicesMan());

    countTheMenu.value = 8;
  }

  GoToOrders() {
    showMore.value = false;
    searchingClearWhenMove();
    Get.to(OrdersView());

    countTheMenu.value = 9;
  }

  GoToWallte() {
    showMore.value = false;
    Get.to(ViewWallteSericesMan());
    searchingClearWhenMove();
    countTheMenu.value = 10;
  }

  GoToServicesNot() {
    showMore.value = false;
    Get.to(NoticeViewServiecs());
    searchingClearWhenMove();
    countTheMenu.value = 11;
  }

  GoToInv() {
    showMore.value = false;
    searchingClearWhenMove();
    Get.to(InvViewServiecs());

    countTheMenu.value = 12;
  }

  GoToAccountsOrders() {
    showMore.value = false;
    searchingClearWhenMove();
    Get.to(ViewServicesManAccounts());

    countTheMenu.value = 13;
  }

  RxBool showMore = false.obs;

///////Send Notifiction................////////////

  String titleNo = "";
  String bodyNo = "";
  sendNo(String title, String thebody) async {
    var headersList = {
      'Accept': '*/*',
      'User-Agent': 'Thunder Client (https://www.thunderclient.com)',
      'Content-Type': 'application/json',
      'Authorization':
          'key=AAAAG1L9LFo:APA91bGxzrfDo94mD1i7BmA9QKK_KkXJy1xSnoe--K5Zo5pwrVjtTcQnSxtH4eirPGfGJRz8eA2aFYB1vl_dT5GXFa3zwA8h4fcq0wQAXmre2Tp35Y2wSuiTPBRKx53D2-8U8sgRzXfm'
    };
    var url = Uri.parse('https://fcm.googleapis.com/fcm/send');

    var body = {
      "to": "/topics/all",
      "notification": {
        "title": title,
        "body": thebody,
        "sound": "default",
        "image":
            "https://firebasestorage.googleapis.com/v0/b/jalai-45565.appspot.com/o/logo.png?alt=media&token=4c593126-a27b-4449-bf32-7fd37f1a9b47"
      },
      "data": {
        "message": "Offer!",
        "image_url":
            "https://firebasestorage.googleapis.com/v0/b/jalai-45565.appspot.com/o/logo.png?alt=media&token=4c593126-a27b-4449-bf32-7fd37f1a9b47",
        "image":
            "https://firebasestorage.googleapis.com/v0/b/jalai-45565.appspot.com/o/logo.png?alt=media&token=4c593126-a27b-4449-bf32-7fd37f1a9b47"
      }
    };

    var req = http.Request('POST', url);
    req.headers.addAll(headersList);
    req.body = json.encode(body);

    var res = await req.send();
    final resBody = await res.stream.bytesToString();

    if (res.statusCode >= 200 && res.statusCode < 300) {
      print(resBody);
    } else {
      print(res.reasonPhrase);
    }
  }

//////////###############################################################################################################///////////
//////////###############################################################################################################///////////
//////////###############################################################################################################///////////
//////////###############################################################################################################///////////

///////////////////....................................The Controller Add OR Edit .......//////////

  TextEditingController controllerOne = TextEditingController();
  TextEditingController controllerTwo = TextEditingController();
  TextEditingController controllerThree = TextEditingController();
  TextEditingController controllerFour = TextEditingController();
  TextEditingController controllerFive = TextEditingController();
  RxBool addToDataBase = false.obs;
  RxBool isAddData = false.obs;
  RxBool isErrorToAddData = false.obs;
  //////..............................................................MainTypes Of Database....................../
  RxBool showTheListOfMainType = false.obs;
  RxString nameOfMainType = "لم يتم الاختيار".obs;
  int idTheMainType = 0;

  //////SubTypes......./
  RxBool showTheListOfSubType = false.obs;
  RxString nameOfSubType = "لم يتم الاختيار".obs;
  String idTheSubType = "";

  clearTheData() {
    controllerOne.clear();
    controllerTwo.clear();
    controllerThree.clear();
    controllerFour.clear();
    controllerFive.clear();
    addToDataBase.value = false;
    isAddData.value = false;
    isErrorToAddData.value = false;
    typeOFAdmin.value = 0;
    nameOfMainType.value = "لم يتم الاختيار";
    nameOfSubType.value = "لم يتم الاختيار";

    update();
  }

/////////////.........MainType.................///////
  String nameOFTypeMain = "";
  String nameEnglishTypeMain = "";
  String ImageTypeMain = "";

  Future<void> addMainType(
      String nameArType, String nameTypeEn, String imageUrl) async {
    addToDataBase.value = true;
    update();
    final url = Uri.parse(AppLinksApi.addMainType);
    final response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'type_name_ar': nameArType,
        'type_name_en': nameTypeEn,
        'type_image':
            "https://larra.xyz/lar_testing/flanjo/storage/images/$imageUrl"
                .toString(),
      }),
    );

    if (response.statusCode == 200) {
      addToDataBase.value = false;
      isAddData.value = true;
      update();
      // إذا كان الطلب ناجحًا، قم بمعالجة البيانات هنا
      print('MainType added successfully');
    } else {
      isErrorToAddData.value = true;
      update();
      // إذا فشل الطلب، قم بمعالجة الخطأ هنا
      print('Failed to add MainType');
    }
    addToDataBase.value = false;

    update();
  }

  //////////////////.................................SubType  Like Products.............................///////////////
  String nameOFSubMain = "";
  String nameEnglishTypeSub = "";
  String DescriptionSubTypeAr = "";
  String DescriptionSubTypeEn = "";
  int price = 0;

  Future<void> addProduct(
      int idTypeMain,
      String nameArType,
      String nameTypeEn,
      String DescriptionAr,
      String DescriptionEn,
      String imageUrl,
      int price) async {
    addToDataBase.value = true;
    update();
    final response = await http.post(
      Uri.parse(AppLinksApi.addProudcts), // استبدل برابط الخادم الخاص بك
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        "prooduct_type": idTypeMain as int,
        "prooduct_name_ar": nameArType.toString(),
        "prooduct_name_en": nameTypeEn.toString(),
        "prooduct_description_ar": DescriptionAr.toString(),
        "prooduct_description_en": DescriptionEn.toString(),
        "products_image":
            'https://larra.xyz/lar_testing/flanjo/storage/images/${imageUrl.toString()}',
        "products_price": price as int,
      }),
    );

    if (response.statusCode == 200) {
      addToDataBase.value = false;
      isAddData.value = true;
      update();
      // إذا كان الخادم يرد برمز الحالة 200 OK ، فقد تمت العملية بنجاح
      print('product added successfully');
    } else {
      isErrorToAddData.value = true;
      update();
      // إذا كان الرد غير 200 OK ، فإن الطلب فشل
      print('Failed to add offer');
    }
    addToDataBase.value = false;
    update();
  }

  //////////////////......................TypeOfSubType  Like SubType Of Products.............................///////////////

////////////////////////////////////...................Offers..............////////
  String nameOffer = "";
  String DescriptionOfOffer = "";
  int priceOffers = 0;
  String imageOffer = "";

  Future<void> addOffer(String offerName, String offerAbout, String offerImage,
      int offerPrice) async {
    addToDataBase.value = true;
    final response = await http.post(
      Uri.parse(AppLinksApi.addOffer), // استبدل برابط الخادم الخاص بك
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'offer_name': offerName,
        'offer_about': offerAbout,
        'offer_image':
            'https://larra.xyz/lar_testing/flanjo/storage/images/${offerImage.toString()}',
        'offer_price': offerPrice, // تحويل السعر إلى نص
        'offer_name_en': 'lll',
        'offer_about_en': 'lkl',
      }),
    );

    if (response.statusCode == 200) {
      addToDataBase.value = false;
      isAddData.value = true;
      update();
      // إذا كان الخادم يرد برمز الحالة 200 OK ، فقد تمت العملية بنجاح
      print('Offer added successfully');
    } else {
      isErrorToAddData.value = true;
      update();
      // إذا كان الرد غير 200 OK ، فإن الطلب فشل
      print('Failed to add offer');
    }
    addToDataBase.value = false;
    update();
  }

  /////////////////////Delete And Edit///////////
  ////////////###########################Main Types............/
  int ofIdMainTypeDeleteOrEdit = 0;
  int isChooseEditMainType = 0;

  Future<void> deleteMainType(String idOFMainType) async {
    var url =
        Uri.parse(AppLinksApi.deleteMainType); // استبدل برابط ال API الخاص بك
    var response =
        await http.post(url, body: {'type_id': idOFMainType.toString()});

    if (response.statusCode == 200) {
      showMore.value = false;
      Get.offAll(ViewMainTypes());
    } else {
      showMore.value = false;
    }
  }

  ////////////#################Sub Types Like Products............/
  String ofIdSubTypeDeleteOrEdit = "";
  int isChooseEditSubType = 0;

  Future<void> deleteProducs(String idOFSubType) async {
    var url =
        Uri.parse(AppLinksApi.deleteProducts); // استبدل برابط ال API الخاص بك
    var response =
        await http.post(url, body: {'prooduct_id': idOFSubType.toString()});

    if (response.statusCode == 200) {
      showMore.value = false;
      Get.offAll(ProductsView());
    } else {
      showMore.value = false;
    }
  }

  //////////// Delete Of Sub Types............/
  int ofIdTypeSubTypeDeleteOrEdit = 0;

////////////////////////////////////Offers

  Future<void> deleteOffer(String idOFTypeSubType) async {
    var url =
        Uri.parse(AppLinksApi.deleteOffer); // استبدل برابط ال API الخاص بك
    var response =
        await http.post(url, body: {'offer_id': idOFTypeSubType.toString()});

    if (response.statusCode == 200) {
      showMore.value = false;
      Get.offAll(ViewOffers());
    } else {
      showMore.value = false;
    }
  }

//////////Delete Admin..........///////////

  Future<void> deleteAdmin(String idOFAdmin) async {
    var url =
        Uri.parse(AppLinksApi.deleteAdmin); // استبدل برابط ال API الخاص بك
    var response =
        await http.post(url, body: {'admin_id': idOFAdmin.toString()});

    if (response.statusCode == 200) {
      showMore.value = false;
      Get.offAll(ViewAdmin());
    } else {
      showMore.value = false;
    }
  }

  ////////////////////////Login Admin........../////////////
  String nameAdmin = "";
  String passwordAdin = "";
  RxInt typeOfAdmin = 0.obs;
  RxString idOfAdmin = "".obs;
  RxBool waitLoadingAdmin = false.obs;
  RxBool isErrorAboutLoginAdmin = false.obs;

  RxBool aboutAccessTheAdminMessage = false.obs;

  loginAdmin(String name, String password) async {
    waitLoadingAdmin.value = true;
    var response = await crud.postRequest(AppLinksApi.LoginAdmin, {
      'admin_name': name.toString(),
      'admin_password': password.toString(),
    });

    if (response['status'] == "success") {
      typeOfAdmin.value =
          int.parse(response['data'][0]['admin_type'].toString());
      idOfAdmin.value = response['data'][0]['admin_id'].toString();
      waitLoadingAdmin.value = false;
      clearTheData();
      Get.to(HomeScreen());
    } else {
      isErrorAboutLoginAdmin.value = true;
    }
    return response;
  }

/////////////////////////////Add Admin///////////////
  String nameOfNewAdmin = "";
  String passwordOFNewAdmin = "";
  RxInt typeOFAdmin = 0.obs;

  Future<void> addAdmin(
      String adminName, String adminPassword, int adminType) async {
    final url =
        Uri.parse(AppLinksApi.addAdminNew); // استبدل بنقطة النهاية الخاصة بAPI
    final response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'admin_name': adminName,
        'admin_password': adminPassword,
        'admin_type': adminType.toString(),
      }),
    );

    if (response.statusCode == 200) {
      // إذا كان الطلب ناجحًا، قم بمعالجة البيانات هنا
      print('Admin added successfully');
    } else {
      // إذا فشل الطلب، قم بمعالجة الخطأ هنا
      print('Failed to add admin-----------------------');
    }
  }

  //////////////////////////...................Add Notice..................../////////////
  String theNoticeBody = "";
  AddNotice(String theNoticeBody) async {
    var response = await crud.postRequest(AppLinksApi.addNotice, {
      'notice_body': theNoticeBody.toString(),
      'add_by': idOfAdmin.value.toString(),
    });

    return response;
  }

  /////////////////////////////.............Services Man....................../////////////////////
  getDataServicesMan() async {
    var response = await crud.postRequest(AppLinksApi.getDataSerivcesMan, {});

    return response;
  }

  String nameOfServiceMan = "";
  String idPhoto = "";
  String phoneNumberServiceMan = "";

  addSeriveMan(
      String name, String idPhoto, String phoneNumber, String idType) async {
    Random random = new Random();
    var randomNumber;
    randomNumber = random.nextInt(100000);
    addToDataBase.value = true;
    var response = await crud.postRequest(AppLinksApi.addDataSerivcesMan, {
      "name": name.toString(),
      "phone": phoneNumber.toString(),
      "id_photo": idPhoto.toString(),
      "password": randomNumber.toString(),
      "service_type": idType.toString(),
    });
    Future.delayed(const Duration(seconds: 2), () async {
      addToDataBase.value = false;
      isAddData.value = true;
    });

    return response;
  }

  editWallte(
    String id,
  ) async {
    var response = await crud.postRequest(AppLinksApi.EditWallte, {
      "id": id.toString(),
    });

    return response;
  }

  String newRatio = "";
  editRatio(String id, String ratio) async {
    var response = await crud.postRequest(AppLinksApi.EditRatio, {
      "id": id.toString(),
      "ratio": ratio.toString(),
    });

    showMore.value = false;

    Get.to(ViewWallteSericesMan());

    return response;
  }

  ////////////////Edit The Main Sub And SubType And Service Man................,,,,,,
  /////////Edit MAIN...........////////

  String idMainTypeEdit = "";
  String nameArEditMainType = "";
  String nameEnEditMainType = "";
  String iconEditMainType = "";

  Future<void> editMainType(String idMainType, String nameArMainType,
      String nameEnMainType, String iconMainType) async {
    addToDataBase.value = true;
    final url =
        Uri.parse(AppLinksApi.EditMainType); // استبدل بنقطة نهاية API الخاصة بك
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: json.encode({
        "type_id": idMainType,
        "type_name_ar": nameArMainType.toString(),
        "type_name_en": nameEnMainType.toString(),
        "type_image":
            'https://larra.xyz/lar_testing/flanjo/storage/images/${iconMainType.toString()}'
                .toString(),
      }),
    );

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      if (responseBody['status'] == 'success') {
        print('تم تحديث البيانات بنجاح');
        addToDataBase.value = false;
        isAddData.value = true;
        update();
      } else {
        print('فشل في تحديث البيانات');
        addToDataBase.value = false;

        update();
      }
    } else {
      addToDataBase.value = false;

      update();
      print('حدث خطأ في الاتصال بالخادم');
    }
  }

  /////////Edit Sub...........////////

  int idProductsEdit = 0;
  int idMainTypeEditInProduct = 0;
  String nameArEditProduct = "";
  String nameEnEditProduct = "";
  String iconProducEdit = "";
  String EditProductdescriptionAr = "";
  String EditProductdescriptionEn = "";
  int EditPriceProduct = 0;

  Future<void> updateProduct(
      int productId,
      int idTypeMain,
      String nameArType,
      String nameTypeEn,
      String DescriptionAr,
      String DescriptionEn,
      String imageUrl,
      int price) async {
    final url = Uri.parse(AppLinksApi.editProduct);

    addToDataBase.value = true; // استبدل بنقطة نهاية API الخاصة بك
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: json.encode({
        'prooduct_id': productId,
        "prooduct_type": idTypeMain,
        "prooduct_name_ar": nameArType.toString(),
        "prooduct_name_en": nameTypeEn.toString(),
        "prooduct_description_ar": DescriptionAr.toString(),
        "prooduct_description_en": DescriptionEn.toString(),
        "products_image":
            'https://larra.xyz/lar_testing/flanjo/storage/images/${imageUrl.toString()}',
        "products_price": price,
      }),
    );

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      if (responseBody['status'] == 'success') {
        print('تم تحديث البيانات بنجاح');
        addToDataBase.value = false;
        isAddData.value = true;
        update();
      } else {
        print('فشل في تحديث البيانات');
        addToDataBase.value = false;

        update();
      }
    } else {
      addToDataBase.value = false;

      update();
      print('حدث خطأ في الاتصال بالخادم');
    }
  }

  //////////### Edit the type Of SubType And Offfers ...............//////////////////
  int isChooseEditTypeSubType = 0;

  int idTypeOFSubType = 0;
  String IdSubType = "";
  String nameTypeSubTypeAr = "";
  String nameTypeSubTypeEn = "";
  String AboutTypeSubTypeAr = "";
  String AboutTypeSubTypeEn = "";
  String AboutImageSubType = "";

  int PriceTypeOfSubType = 0;

///////////////############################## Edit the  Offfers/////////////
  int isChooseEditTEditOffers = 0;

  int idEditOffers = 0;

  String nameEditOfferAr = "";
  String nameEditOfferEn = "";
  String AboutEditOfferAr = "";
  String AboutEditOfferEn = "";
  String ImageEditOfferAr = "";
  int PriceOfferEdit = 0;

  Future<void> updateOffers(
      int idOffers, String name, String about, String image, int price) async {
    addToDataBase.value = true;
    final url =
        Uri.parse(AppLinksApi.EditOffers); // استبدل بنقطة نهاية API الخاصة بك
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: json.encode({
        "offer_id": idOffers,
        "offer_name": name.toString(),
        "offer_about": about.toString(),
        "offer_image":
            'https://larra.xyz/lar_testing/flanjo/storage/images/${image.toString()}',
        "offer_price": price
      }),
    );

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      if (responseBody['status'] == 'success') {
        print('تم تحديث البيانات بنجاح');
        addToDataBase.value = false;
        isAddData.value = true;
        update();
      } else {
        print('فشل في تحديث البيانات');
        addToDataBase.value = false;

        update();
      }
    } else {
      addToDataBase.value = false;

      update();
      print('حدث خطأ في الاتصال بالخادم');
    }
  }

  ////////////////////////

  //////////### Edit the Service Man ...............//////////////////
  int isChooseEditServiceMan = 0;

  String idServiceManEdit = "";
  String idSerivceJobEdit = "";
  String nameServiceManEdit = "";
  String idPhotoServiceManEdit = "";
  String numberPhoneEditServiceMan = "";

  editServiceMan(
    String id,
    String name,
    String phone,
    String idPhoto,
    String idTypeJon,
  ) async {
    addToDataBase.value = true;
    var response = await crud.postRequest(AppLinksApi.EditServiceMan, {
      "id": id.toString(),
      "name": name.toString(),
      "phone": phone.toString(),
      "id_photo": idPhoto.toString(),
      "service_type": idTypeJon.toString(),
    });
    Future.delayed(const Duration(seconds: 2), () async {
      addToDataBase.value = false;
      isAddData.value = true;
    });

    return response;
  } //////////### Edit the  Admin ...............//////////////////

  int isChooseEditAdmin = 0;

  int idAdminEdit = 0;
  String nameAdminEdit = "";
  String passwordAdminEdit = "";
  int typeOfAccessEditAdmin = 0;

  Future<void> updateAdmin(int adminId, String adminName, String adminPassword,
      int adminType) async {
    final url =
        Uri.parse(AppLinksApi.EditTheAdmin); // استبدل بنقطة نهاية API الخاصة بك
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: json.encode({
        'admin_id': adminId,
        'admin_name': adminName,
        'admin_password': adminPassword,
        'admin_type': adminType,
      }),
    );

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      if (responseBody['status'] == 'success') {
        print('تم تحديث البيانات بنجاح');
        isAddData.value = true;
        update();
      } else {
        print('فشل في تحديث البيانات');
      }
    } else {
      print('حدث خطأ في الاتصال بالخادم');
    }
  }

  ///////////////////////######################################Searching .............//////////////

  TextEditingController searchingName = TextEditingController();
  String nameSearching = "";
  RxBool isSearchingName = false.obs;
  RxBool TheResultNameSearch = false.obs;
  RxBool isClickTheResult = false.obs;
  RxBool noDataSearching = true.obs;

  searchingClearWhenMove() {
    nameSearching = "";
    searchingName.clear();
    isSearchingName.value = false;
    isClickTheResult.value = false;
    TheResultNameSearch.value = false;
    noDataSearching.value = true;
  }

  searchFlutter() async {
    if (isSearchingName.value == true) {
      if (isClickTheResult.value == true) {
        nameSearching = "";
        searchingName.clear();
        isSearchingName.value = false;
        isClickTheResult.value = false;
        TheResultNameSearch.value = false;
        noDataSearching.value = true;
      } else {
        TheResultNameSearch.value = true;
        isClickTheResult.value = true;
      }
    } else {}
  }

////////////Admin//////////////

  searchinfAdminName(String name) async {
    var response = await crud.postRequest(AppLinksApi.searchingAdminName, {
      'search': name.toString(),
    });
///////
    if (response['status'] == "success") {
      noDataSearching.value = true;
    } else {
      noDataSearching.value = false;
    }

    return response;
  }

  ////////////User//////////////
  List<Users> searchResults = [];
  Future<List<Users>> searchinfUserName(String name) async {
    final response = await http.get(
      Uri.parse('${AppLinksApi.searchingUserName}?search=$name'),
      headers: {},
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data['status'] == 'success') {
        noDataSearching.value = true;
        // تأكد من أن الدالة fromJson تعيد كائن من نوع Users
        searchResults = (data['data'] as List)
            .map((e) => Users.fromJson(e))
            .cast<Users>()
            .toList();
      } else {
        noDataSearching.value = false;
        // Handle the case where the search did not return any results
      }
    } else {
      // Handle other status codes
    }
    return searchResults; // تأكد من إرجاع القائمة من النوع الصحيح
  }
  ////////////Main//////////////

  searchinMainName(String name) async {
    var response = await crud.postRequest(AppLinksApi.searchingMainTypeName, {
      'search': name.toString(),
    });
///////
    if (response['status'] == "success") {
      noDataSearching.value = true;
    } else {
      noDataSearching.value = false;
    }

    return response;
  } ////////////Sub//////////////

  searchingProductsName(String name) async {
    var response = await crud.postRequest(AppLinksApi.searchingProductsName, {
      'search': name.toString(),
    });
///////
    if (response['status'] == "success") {
      noDataSearching.value = true;
    } else {
      noDataSearching.value = false;
    }

    return response;
  } ////////////TypeSub//////////////

  searchinOffers(String name) async {
    var response = await crud.postRequest(AppLinksApi.searchingOffer, {
      'search': name.toString(),
    });
///////
    if (response['status'] == "success") {
      noDataSearching.value = true;
    } else {
      noDataSearching.value = false;
    }

    return response;
  } ////////////Order//////////////

  searchinOrder(String name) async {
    var response = await crud.postRequest(AppLinksApi.searchingOrderNumber, {
      'search': name.toString(),
    });
///////
    if (response['status'] == "success") {
      noDataSearching.value = true;
    } else {
      noDataSearching.value = false;
    }

    return response;
  } ////////////Man Service//////////////

  searchinServiceMan(String name) async {
    var response = await crud.postRequest(AppLinksApi.searchingNameServiceMan, {
      'search': name.toString(),
    });
///////
    if (response['status'] == "success") {
      noDataSearching.value = true;
    } else {
      noDataSearching.value = false;
    }

    return response;
  }

  RxBool isUploadImage = false.obs;
  ///////////////////////////////////////////
  Uint8List? imageBytes;
  String imageName = "";

  ChangeWhenEditMainTypeSubTypeProductType() {}
  // دالة لاختيار الصورة وعرضها

// دالة لاختيار الصورة وعرضها
  void chooseAndDisplayImage() {
    EditImage = 1;
    final html.FileUploadInputElement input = html.FileUploadInputElement()
      ..accept = 'image/*';
    input.click();
    input.onChange.listen((event) {
      final html.File file = input.files!.first;
      final reader = html.FileReader();
      reader.onLoadEnd.listen((event) {
        imageBytes = reader.result as Uint8List;
        imageName = file.name;
        isUploadImage.value = true;
        var rng = Random();
        imageName = '${rng.nextInt(1000000)}.png';

        update(); // إضافة هذا السطر لتحديث الواجهة

        ////ChangeWhenEditMainTypeSubTypeProductType
        ImageEditOfferAr = imageName;
        iconEditMainType = imageName;
        iconProducEdit = imageName;
      });
      reader.readAsArrayBuffer(file);
    });
  }

// دالة لرفع الصورة إلى السيرفر
  Future<void> uploadImageToServer() async {
    if (imageBytes != null && imageName != null) {
      try {
        final uri = Uri.parse(
            'https://larra.xyz/lar_testing/flanjo/public/upload-endpoint');
        final request = http.MultipartRequest('POST', uri)
          ..files.add(http.MultipartFile.fromBytes('image', imageBytes!,
              filename: imageName));
        final streamedResponse = await request.send();
        final response = await http.Response.fromStream(streamedResponse);

        if (response.statusCode == 200) {
          // إذا كان الطلب ناجحًا، قم بمعالجة البيانات هنا
          print('Image uploaded successfully');
          isUploadImage.value = false;
          // تصفير التعديلات
          ImageEditOfferAr = "";
          iconEditMainType = "";
          iconProducEdit = "";

          EditImage = 0;
        } else {
          // إذا فشل الطلب، قم بمعالجة الخطأ هنا
          print('Failed to upload image');
        }
      } catch (e) {
        print('Exception caught: $e');
      }
    }
  }

  ///////////////When Edit The Image Upload In Database...............//////

  int EditImage = 0;
}
