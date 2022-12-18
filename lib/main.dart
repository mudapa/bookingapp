import 'package:bookingapp/data/src/img_string.dart';
import 'package:bookingapp/presentation/widget/primary_button.dart';
import 'package:bookingapp/presentation/widget/secondary_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(ImgString.standing),
              const SizedBox(height: 12),
              const Text("Test App"),
              const SizedBox(height: 12),
              PrimaryButton(
                onPressed: () {},
                text: "Download",
                type: PrimaryButtonType.type3,
              ),
              const SizedBox(height: 6),
              SecondaryButton(
                onPressed: () {},
                text: "Download",
                type: SecondaryButtonType.type3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
