import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 8,
      width: isActive ? 32 : 8,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xff4DB7F2) : const Color(0xffE7E7E7),
        borderRadius: BorderRadius.circular(20), // بدل BoxShape.circle
      ),
      duration: const Duration(milliseconds: 300),
    );
  }
}
