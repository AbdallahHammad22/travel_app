import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/view/pages/welcome_page/page3.dart';
import '../../../controller/Constant/color_size.dart';
import '../../widget/cust_floatingbutton.dart';
import '../../widget/cust_text.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

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
          Image.asset("assets/image/page2.png"),
          const SizedBox(
            height: 60,
          ),
          const CustomText(
            text: 'Request A Ride',
            fontsize: 20,
            weight: FontWeight.bold,
            alignment: Alignment.center,
          ),
          const SizedBox(
            height: 40,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              children: const [
                CustomText(
                  text: 'With Meili, commuting is faster',
                  fontsize: 18,
                  alignment: Alignment.center,
                ),
                CustomText(
                  text: ' and safer',
                  fontsize: 18,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 38,
          ),
          FloatingB(
            onPress: () => Get.to(() => const Page3()),
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
