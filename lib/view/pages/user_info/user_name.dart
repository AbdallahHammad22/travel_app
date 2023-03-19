import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:travel_app/view/pages/user_info/term_review.dart';
import '../../widget/cust_button.dart';
import '../../widget/cust_floatingbutton.dart';
import '../../widget/cust_text.dart';

class UserName extends StatelessWidget {
  const UserName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            const CustomText(
              text: "What’s your name?",
              fontsize: 20,
            ),
            const SizedBox(
              height: 14,
            ),
            const CustomText(
              text: "Let us know how to properly address you",
              fontsize: 14,
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: "Enter first name",
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 3, color: Colors.grey), //<-- SEE HERE
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: "Enter last name",
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 3, color: Colors.grey), //<-- SEE HERE
                ),
              ),
            ),
            const SizedBox(
              height: 80,
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
                    Get.to(() => const TermReview());
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
