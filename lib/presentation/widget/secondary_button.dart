import 'package:bookingapp/config/config.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    this.type = SecondaryButtonType.type1,
    required this.onPressed,
    required this.text,
  });
  final SecondaryButtonType type;
  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return type == SecondaryButtonType.type1
        ? _type1()
        : type == SecondaryButtonType.type2
            ? _type2()
            : _type3();
  }

  Widget _type1() {
    return OutlinedButton(
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
    );
  }

  Widget _type2() {
    return OutlinedButton(
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
    );
  }

  Widget _type3() {
    return OutlinedButton(
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
    );
  }
}

enum SecondaryButtonType {
  type1,
  type2,
  type3,
}
