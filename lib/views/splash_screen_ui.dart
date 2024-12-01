// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously, annotate_overrides

import 'package:flutter/material.dart';
import 'package:money_tracking/views/start_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {

  void initState() {
    //หน่วงหน้าจอ 3 วิ แล้วเปิด LoginUI แบบไม่ย้อนกลับ
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => StartUI(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color.fromARGB(255, 248, 149, 182),
            const Color.fromARGB(255, 250, 239, 144),
            const Color.fromARGB(255, 166, 253, 169),
          ],
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.asset(
                  'assets/images/eye.jpg',
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              CircularProgressIndicator(
                strokeWidth: 2,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                'Money Tyacking',
                style:TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                    color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                'รายรับรายจ่ายของฉัน',
                style:TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                    color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              Text(
                'Created by : Baby Girl-6419410038',
                style:TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.017,
                    color: const Color.fromARGB(123, 0, 0, 0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
