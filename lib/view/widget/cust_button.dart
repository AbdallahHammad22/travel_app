import 'package:flutter/material.dart';
import '../../controller/Constant/color_size.dart';

class Button1 extends StatelessWidget {
  final double hight;
  final double width;

  final String Tex;

  final VoidCallback onPress;

  const Button1({
    super.key,
    required this.hight,
    required this.width,
    required this.Tex,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        width: width,
        height: hight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: k1,
        ),
        child: // ignore: sort_child_properties_last
            Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                Tex,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 13,
              ),
              const Icon(
                Icons.arrow_forward,
                size: 30,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
