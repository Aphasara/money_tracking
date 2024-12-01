// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:money_tracking/views/login_ui.dart';
import 'package:money_tracking/views/register_ui.dart';

class StartUI extends StatefulWidget {
  const StartUI({super.key});

  @override
  State<StartUI> createState() => _StartUIState();
}

class _StartUIState extends State<StartUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'), // ใส่ path ของรูปภาพ
            fit: BoxFit.cover, // ปรับขนาดรูปภาพให้เต็มหน้าจอ
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                //borderRadius: BorderRadius.circular(200),
                child: Image.asset(
                  'assets/images/money.png',
                  width: 300,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                '\t\t\t\t\t\tบันทึก\nรายรับ-รายจ่าย',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 255, 44, 115),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginUI(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.80,
                  height: MediaQuery.of(context).size.height * 0.060,
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 44, 115),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Text(
                    '        เริ่มใช้งานแอปพลิเคชัน',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ยังไม่ได้ลงทะเบียน?  ',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                  InkWell(
                    //หรือใช้ GestureDetector() ก็ได้
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterUI(),
                        ),
                      );
                    },
                    child: Text(
                      'ลงทะเบียน',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                        color: const Color.fromARGB(255, 255, 44, 115),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
