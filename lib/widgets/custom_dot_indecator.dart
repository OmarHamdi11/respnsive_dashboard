import 'package:flutter/material.dart';

class CustomDotIndecator extends StatelessWidget {
  const CustomDotIndecator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      child: Container(
        width: isActive ? 32 : 8,
        height: 8,
        decoration: ShapeDecoration(
          color: isActive ? const Color(0xFF4DB7F2) : const Color(0xFFE7E7E7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
