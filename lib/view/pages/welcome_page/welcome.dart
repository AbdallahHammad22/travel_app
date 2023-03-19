import 'package:flutter/material.dart';

import '../../widget/cust_text.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Center(
              child: CustomText(
                text: "Welcome To",
                fontsize: 30,
                weight: FontWeight.bold,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 60,
              width: 120,
              child: Image.asset(
                "assets/image/meili.png",
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: CustomText(
                text: "We are glad you joined us",
                fontsize: 18,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Center(child: Image.asset("assets/image/arrow_location.png")),
          ],
        ),
      ),
    );
  }
}
