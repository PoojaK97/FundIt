//import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:small_b/details.dart';
import 'package:small_b/login_screen.dart';
import 'dart:async';
import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:small_b/models.dart';
import 'package:small_b/in_app_payments.dart';
import 'package:small_b/google_pay_constants.dart' as google_pay_constants;
import 'colors.dart';
import 'config.dart';
import 'widgets/buy_sheet.dart';
//import 'package:flutter_screenutil/screenutil.dart';

//import 'details.dart';
//import 'profile-menu.dart';

void main() async {
  runApp(
    // DevicePreview(
    //   enabled: true,
    //   builder: (context) =>
    MyApp(),

    // ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: false);

    return MaterialApp(
      title: 'small_business',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],

        // Define the default font family.
        fontFamily: 'Typewriter',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 42.0, fontWeight: FontWeight.bold, color: Colors.white),
          headline5: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),
          headline2: TextStyle(
              fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white),
          headline3: TextStyle(
              fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.w500),
          headline4: TextStyle(
              fontSize: 20.0,
              color: Colors.cyan[200],
              fontWeight: FontWeight.w500),
          bodyText2: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => LoginScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        // '/second': (context) => SecondScreen(),
      },
      //builder: DevicePreview.appBuilder,
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;
  bool applePayEnabled = false;
  bool googlePayEnabled = true;

  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _initSquarePayment();

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  Future<void> _initSquarePayment() async {
    await InAppPayments.setSquareApplicationId(squareApplicationId);

    var canUseApplePay = false;
    var canUseGooglePay = true;
    if (Platform.isAndroid) {
      await InAppPayments.initializeGooglePay(
          squareLocationId, google_pay_constants.environmentTest);
      canUseGooglePay = await InAppPayments.canUseGooglePay;
    } else if (Platform.isIOS) {
      await _setIOSCardEntryTheme();
      await InAppPayments.initializeApplePay(applePayMerchantId);
      canUseApplePay = await InAppPayments.canUseApplePay;
    }

    setState(() {
      isLoading = false;
      applePayEnabled = canUseApplePay;
      googlePayEnabled = canUseGooglePay;
    });
  }

  Future _setIOSCardEntryTheme() async {
    var themeConfiguationBuilder = IOSThemeBuilder();
    themeConfiguationBuilder.saveButtonTitle = 'Pay';
    themeConfiguationBuilder.errorColor = RGBAColorBuilder()
      ..r = 255
      ..g = 0
      ..b = 0;
    themeConfiguationBuilder.tintColor = RGBAColorBuilder()
      ..r = 36
      ..g = 152
      ..b = 141;
    themeConfiguationBuilder.keyboardAppearance = KeyboardAppearance.light;
    themeConfiguationBuilder.messageColor = RGBAColorBuilder()
      ..r = 114
      ..g = 114
      ..b = 114;

    await InAppPayments.setIOSCardEntryTheme(themeConfiguationBuilder.build());
  }

  Widget build(BuildContext context) => GetMaterialApp(
      theme: ThemeData(canvasColor: Colors.white),
      home: Scaffold(
          body: isLoading
              ? Center(
                  child: CircularProgressIndicator(
                  valueColor:
                      AlwaysStoppedAnimation<Color>(mainBackgroundColor),
                ))
              : BuySheet(
                  applePayEnabled: applePayEnabled,
                  googlePayEnabled: googlePayEnabled,
                  applePayMerchantId: applePayMerchantId,
                  squareLocationId: squareLocationId)));
}
