import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/cust_button.dart';
import '../../widget/cust_text.dart';
import '../welcome_page/welcome.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 260,
            ),
            Center(child: Image.asset("assets/image/location.png")),
            const SizedBox(
              height: 160,
            ),
            const SizedBox(
              height: 140,
              width: 350,
              child: CustomText(
                text: "Relax And Move Around Safely With Real-Time Trip Update",
                fontsize: 18,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Button1(
                hight: 50,
                width: 350,
                Tex: "Next",
                onPress: () => Get.to(() => const Welcome()))
          ],
        ),
      ),
    );
  }
}
