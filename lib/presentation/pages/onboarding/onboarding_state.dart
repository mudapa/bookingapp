import 'package:bookingapp/data/model/onboarding/onboarding.dart';
import 'package:bookingapp/data/src/img_string.dart';

class OnboardingState {
  final List<Onboarding> onboardingList = [
    Onboarding(
      title: "Find a Roomie!",
      description:
          "We've helped millions across the nation find their perfect match... and you're next!",
      image: ImgString.standing,
    ),
    Onboarding(
      title: "Your Roommate Finder",
      description:
          "Hey you, looking for a roommate? We've helped millions across the nation find their perfect match... and you're next!",
      image: ImgString.standing2,
    ),
    Onboarding(
      title: "Find Your Match!",
      description:
          "We've helped millions across the nation find their perfect match... and you're next!",
      image: ImgString.standing1,
    ),
  ];

  int currentIndex = 0;

  OnboardingState init() {
    return OnboardingState();
  }

  OnboardingState clone() {
    return OnboardingState();
  }
}
