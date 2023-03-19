import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/view/pages/welcome_page/page4.dart';

import '../../../controller/Constant/color_size.dart';
import '../../widget/cust_floatingbutton.dart';
import '../../widget/cust_text.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

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
                decoration: BoxDecoration(
                    color: k1, borderRadius: BorderRadius.circular(10)),
                width: 45,
                height: 13,
              ),
              Container(
                width: 30,
                height: 13,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Image.asset("assets/image/page3.png"),
          const SizedBox(
            height: 60,
          ),
          const CustomText(
            text: 'Travel Better For Less',
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
              text: 'With Meili,save time and money',
              fontsize: 18,
              alignment: Alignment.center,
            ),
          ),
          const SizedBox(
            height: 42,
          ),
          FloatingB(
            onPress: () => Get.to(() => const Page4()),
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
