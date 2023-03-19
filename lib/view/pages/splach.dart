import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/view/pages/welcome_page/page1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 0), () => Get.to(const Page1()));

    super.initState();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: null,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Image.asset("assets/image/Splash.png"),
      ),

      // child: null,/* add child content here */
    );
  }
}
