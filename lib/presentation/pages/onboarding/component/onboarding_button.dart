import 'package:bookingapp/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:bookingapp/presentation/widget/primary_button.dart';
import 'package:bookingapp/presentation/widget/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SecondaryButton(
          onPressed: cubit.skip,
          text: "Skip",
          width: 148.0,
        ),
        const SizedBox(width: 16),
        PrimaryButton(
          onPressed: cubit.next,
          text: "Next",
          width: 148.0,
        )
      ],
    );
  }
}
