import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:travel_app/view/pages/user_info/user_name.dart';

import '../../widget/cust_button.dart';
import '../../widget/cust_floatingbutton.dart';
import '../../widget/cust_text.dart';

class UserNumber extends StatelessWidget {
  const UserNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const CustomText(
              text: "Enter your mobile number",
              fontsize: 18,
            ),
            const SizedBox(height: 22),
            IntlPhoneField(
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              initialCountryCode: 'IN',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
            const SizedBox(
              height: 14,
            ),
            const CustomText(
              text:
                  "By continuing you may receive an SMS for verification.Message and data rate may apply",
              color: Colors.grey,
              fontsize: 14,
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
                    Get.to(() => const UserName());
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
