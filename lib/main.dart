import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smoe_dashboard/views/LoginAdmin/login_screen_desktop.dart';
import 'core/constant/color_primary.dart';
import 'core/services/appservices.dart';

import 'firebase_options.dart';

import 'views/AdminView/add_admin.dart';
import 'views/AdminView/admin_view.dart';
import 'views/Home/home_screen.dart';
import 'views/InvVeiw/inv_view.dart';
import 'views/MainTypes/add_main_type.dart';
import 'views/OrdersView/orders_view.dart';
import 'views/Products/add_products.dart';
import 'views/Products/view_products.dart';
import 'views/ServicesMan/add_service_man.dart';
import 'views/ServicesMan/view_services_man.dart';
import 'views/UsersScreen/view_users.dart';
import 'views/offers/add_offers.dart';
import 'views/testing.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Stripe.publishableKey = ApiKeysStripe.Publishablekey;

// ...

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initialServices();
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: const MyApp()));
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

class MyApp extends StatelessWidget {
  final width;
  const MyApp({Key? key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use

    return GetMaterialApp(
      //  initialBinding: initBindings(),
      debugShowCheckedModeBanner: false,

      title: "Smoe Dashboard",
      home: Scaffold(
          body: SafeArea(
              child: ScreenUtilInit(
                  designSize: Size(360, 690),
                  child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: LoginScreenDeskTop())))),
      theme: ThemeData(primarySwatch: ModeColor.mode),
      builder: (context, child) {
        final mediaQueryData = MediaQuery.of(context);
        final scale = mediaQueryData.textScaleFactor.clamp(0.9, 0.9);
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: scale),
            child: child!);
      },
    );
  }
}
