import 'package:bookingapp/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    this.type = SecondaryButtonType.type3,
    required this.onPressed,
    required this.text,
    this.width = 80,
  });
  final SecondaryButtonType type;
  final VoidCallback? onPressed;
  final String text;
  final double width;
  @override
  Widget build(BuildContext context) {
    return type == SecondaryButtonType.type1
        ? _type1()
        : type == SecondaryButtonType.type2
            ? _type2()
            : _type3();
  }

  Widget _type1() {
    return SizedBox(
      width: width.w,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
          side: const BorderSide(
            color: AppColor.ink01,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          text,
          style: AppFont.buttonSmall.copyWith(
            color: AppColor.ink01,
          ),
        ),
      ),
    );
  }

  Widget _type2() {
    return SizedBox(
      width: width.w,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
          side: const BorderSide(
            color: AppColor.ink01,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          text,
          style: AppFont.buttonMedium.copyWith(
            color: AppColor.ink01,
          ),
        ),
      ),
    );
  }

  Widget _type3() {
    return SizedBox(
      width: width.w,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          side: const BorderSide(
            color: AppColor.ink01,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          text,
          style: AppFont.buttonLarge.copyWith(
            color: AppColor.ink01,
          ),
        ),
      ),
    );
  }
}

enum SecondaryButtonType {
  type1,
  type2,
  type3,
}
