import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hexcolor/hexcolor.dart';

import 'package:travel_app/view/pages/user_info/user_location.dart';

import '../../widget/cust_button.dart';
import '../../widget/cust_floatingbutton.dart';
import '../../widget/cust_text.dart';

class TermReview extends StatefulWidget {
  const TermReview({Key? key}) : super(key: key);

  @override
  State<TermReview> createState() => _TermReviewState();
}

class _TermReviewState extends State<TermReview> {
  bool firstvalue = false;
  bool scoundvalue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            Image.asset("assets/image/term.png"),
            const SizedBox(
              height: 20,
            ),
            RichText(
                text: const TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontStyle: FontStyle.italic),
                    //apply style to all
                    children: [
                  TextSpan(
                    text:
                        'By selecting “I Agree” below , i have reviewed and agreed to the',
                  ),
                  TextSpan(
                      text: 'Terms of use',
                      style: TextStyle(color: Colors.blueAccent)),
                  TextSpan(
                    text: ' and acknowledge the ',
                  ),
                  TextSpan(
                      text: ' Privacy Notice.',
                      style: TextStyle(color: Colors.blueAccent)),
                  TextSpan(
                    text: 'I am at least 18 years of age.',
                  )
                ])),
            const SizedBox(
              height: 400,
            ),
            const Divider(
              color: Colors.black,
            ),
            Row(
              children: [
                const CustomText(
                  text: "Agree",
                ),
                const SizedBox(
                  width: 280,
                ),
                Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                        value: firstvalue,
                        onChanged: (bool? newValue) {
                          setState(() {
                            firstvalue = newValue!;
                          });
                        })),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                FloatingB(
                  onPress: () => Get.back(),
                  color1: HexColor("#DDDDDD"),
                  icon1: const Icon(
                    Icons.arrow_back,
                    size: 27,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 200,
                ),
                Button1(
                  width: 130,
                  hight: 55,
                  Tex: "Next",
                  onPress: () {
                    Get.to(() => const Location());
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
