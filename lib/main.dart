import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OTP(),
    ),
  );
}

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  TextEditingController txtEnterOTPlength = TextEditingController();
  List n = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
  int i = 0;
  int j = 0;
  int k = 0;
  int l = 0;
  int y = 0;
  int u = 0;
  int a = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff15172B),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Text(
                "OTP Generator",
                style: TextStyle(color: Color(0xffF6DB87), fontSize: 40),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 300,
            child: TextField(
              style: TextStyle(color: Color(0xffFCF6BA)),
              controller: txtEnterOTPlength,
              decoration: InputDecoration(
                /*label: Text("Enter OTP length"),labelStyle: TextStyle(color: Color(0xffFCF6BA),
                  fontSize: 10),*/
                hintText: 'Enter OTP length       (0 to 9) only',
                hintStyle: TextStyle(fontSize: 10, color: Color(0xff9d9d9d)),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffFCF6BA),
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: new BorderSide(color: Color(0xfffcf6ba)),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              String otp = txtEnterOTPlength.text;
              a = int.parse(otp);
              Random r1 = Random();
              Random r2 = Random();
              Random r3 = Random();
              Random r4 = Random();
              Random r5 = Random();
              Random r6 = Random();
              setState(() {
                i = r1.nextInt(a) + 1;
                j = r2.nextInt(a) + 1;
                k = r3.nextInt(a) + 1;
                l = r4.nextInt(a) + 1;
                y = r5.nextInt(a) + 1;
                u = r6.nextInt(a) + 1;
              });
            },
            child: Card(
              elevation: 4,
              shadowColor: Color(0xffffffff),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    colors: [Color(0xffffe8db), Color(0xfff6db87)],
                  ),
                ),
                child: Text(
                  'Generate OTP',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 60,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: Color(0xfff6db87),
                ),
                child: Text(
                  "$i",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 60,
                width: 50,
                decoration: BoxDecoration(
                  color: Color(0xfff6db87),
                ),
                child: Text(
                  "$j",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 60,
                width: 50,
                decoration: BoxDecoration(
                  color: Color(0xfff6db87),
                ),
                child: Text(
                  "$k",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 60,
                width: 50,
                decoration: BoxDecoration(
                  color: Color(0xfff6db87),
                ),
                child: Text(
                  "$u",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 60,
                width: 50,
                decoration: BoxDecoration(
                  color: Color(0xfff6db87),
                ),
                child: Text(
                  "$y",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 60,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Color(0xfff6db87),
                ),
                child: Text(
                  "$l",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () {
              setState(() {
                i = 0;
                j = 0;
                k = 0;
                l = 0;
                y = 0;
                u = 0;
                a = 0;
              });
            },
            child: Card(
              elevation: 4,
              shadowColor: Color(0xffffffff9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    colors: [Color(0xffffc4a6), Color(0xfff6db87)],
                  ),
                ),
                child: Text(
                  'Reset',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          Align(alignment: Alignment.bottomRight,child: Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text("By: Jay_7429",style: TextStyle(color: Color(0xffffc4a6)),),
          )),
        ],
      ),
    );
  }
}
