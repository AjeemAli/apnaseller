import 'dart:async';
import 'package:apnademandseller/event/screen/selecte_option/selecte_option.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () => Get.offAll(const SelecteOption()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",

                height: 100,
              ),
           const   Text("Seller",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
            ],
          ),
        ),
      ),
    );
  }
}
