import 'package:bookingapp/config/config.dart';
import 'package:bookingapp/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:bookingapp/presentation/pages/onboarding/onboarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              cubit.state.onboardingList[cubit.state.currentIndex].title!,
              style: AppFont.display3,
              textAlign: TextAlign.center,
            ),
            Text(
              cubit.state.onboardingList[cubit.state.currentIndex].description!,
              style: AppFont.paragraphMedium,
              textAlign: TextAlign.center,
            ),
          ],
        );
      },
    );
  }
}
