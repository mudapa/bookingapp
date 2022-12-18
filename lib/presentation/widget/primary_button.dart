import 'package:bookingapp/config/config.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.type = PrimaryButtonType.type1,
    required this.onPressed,
    required this.text,
  });
  final PrimaryButtonType type;
  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return type == PrimaryButtonType.type1
        ? _type1()
        : type == PrimaryButtonType.type2
            ? _type2()
            : _type3();
  }

  Widget _type1() {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ),
        backgroundColor: AppColor.ink01,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Text(
        text,
        style: AppFont.buttonSmall.copyWith(
          color: AppColor.ink06,
        ),
      ),
    );
  }

  Widget _type2() {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        backgroundColor: AppColor.ink01,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Text(
        text,
        style: AppFont.buttonMedium.copyWith(
          color: AppColor.ink06,
        ),
      ),
    );
  }

  Widget _type3() {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        backgroundColor: AppColor.ink01,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Text(
        text,
        style: AppFont.buttonLarge.copyWith(
          color: AppColor.ink06,
        ),
      ),
    );
  }
}

enum PrimaryButtonType {
  type1,
  type2,
  type3,
}
