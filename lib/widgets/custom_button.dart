import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.backgroundColor,
      required this.titleColor});
  final String title;
  final Color backgroundColor, titleColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor: backgroundColor,
        ),
        onPressed: () {},
        child: Text(
          title,
          style: AppStyles.styleSemiBold18.copyWith(color: titleColor),
        ),
      ),
    );
  }
}
