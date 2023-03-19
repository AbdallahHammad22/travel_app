import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/view/pages/welcome_page/page2.dart';
import '../../../controller/Constant/color_size.dart';
import '../../widget/cust_button.dart';
import '../../widget/cust_text.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: k1,
            height: 600,
            child: Image.asset("assets/image/page1.png"),
          ),
          const SizedBox(
            height: 60,
          ),
          const CustomText(
            text: 'Relax And Move Around Safely',
            fontsize: 20,
            alignment: Alignment.center,
          ),
          const SizedBox(
            height: 40,
          ),
          Button1(
            width: 350,
            hight: 60,
            Tex: "Get Start ",
            onPress: () {
              Get.to(() => const Page2());
            },
          ),
        ],
      ),
    );
  }
}
