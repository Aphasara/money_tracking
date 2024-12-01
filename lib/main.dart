// ignore_for_file: prefer_const_constructors, use_super_parameters, depend_on_referenced_packages
 
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_tracking/views/splash_screen_ui.dart';
// import 'package:kinkun_project/views/login_ui.dart';
// import 'package:sau_iot_test_project/views/splash_screen_ui.dart';
 
void main() {
  runApp(
    MyApp(),
  );
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
}
 
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  State<MyApp> createState() => _MyAppState();
}
 
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUI(),
      theme: ThemeData(
        textTheme: GoogleFonts.maliTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}