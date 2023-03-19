import 'package:flutter/material.dart';
import '../../../controller/Constant/color_size.dart';
import '../../widget/cust_floatingbutton.dart';
import '../../widget/cust_text.dart';
import 'package:get/get.dart';

import '../user_info/user_number.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            )),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 30,
                height: 13,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                width: 30,
                height: 13,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                decoration: BoxDecoration(
                    color: k1, borderRadius: BorderRadius.circular(10)),
                width: 45,
                height: 13,
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Image.asset("assets/image/page4.jpg"),
          const SizedBox(
            height: 60,
          ),
          const CustomText(
            text: 'Track Your Ride',
            fontsize: 20,
            weight: FontWeight.bold,
            alignment: Alignment.center,
          ),
          const SizedBox(
            height: 50,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(right: 20, left: 20),
            child: const CustomText(
              text: 'With Meili, you are always on top',
              fontsize: 17,
              alignment: Alignment.center,
            ),
          ),
          const SizedBox(
            height: 42,
          ),
          FloatingB(
            onPress: () => Get.to(() => const UserNumber()),
            color1: k1,
            icon1: const Icon(
              Icons.arrow_forward,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
