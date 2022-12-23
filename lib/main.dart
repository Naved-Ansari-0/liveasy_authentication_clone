import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:liveasy_clone/pages/1.dart';
import 'package:liveasy_clone/pages/2.dart';
import 'package:liveasy_clone/pages/3.dart';
import 'package:liveasy_clone/pages/4.dart';
import 'package:liveasy_clone/pages/5.dart';
import 'package:get/get.dart';
import 'LocaleString.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(
  debugShowCheckedModeBanner: false,
    translations: LocaleString(),
    locale: Locale('en','US'),
  initialRoute: '/languageScreen',
  routes: {
    '/languageScreen' : (context) => LanguageScreen(),
    '/phoneNoScreen' : (context) => PhoneNoScreen(),
    '/otpScreen' : (context) => OTPScreen(),
    '/profileTypeScreen' : (context) => ProfileTypeScreen(),
    '/welcomeScreen' : (context) => WelcomeScreen(),
  },
));
}
