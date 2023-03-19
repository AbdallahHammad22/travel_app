import 'package:flutter/material.dart';

class FloatingB extends StatelessWidget {
  final Icon? icon1;
  final Color color1;
  final VoidCallback onPress;

  const FloatingB({
    super.key,
    required this.color1,
    required this.icon1,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed:
        onPress,

      backgroundColor: color1,
      child: icon1,
    );
  }
}
