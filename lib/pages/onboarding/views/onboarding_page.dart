import 'package:flutter/material.dart';
import '../widgets/app_preview_mockup.dart';
import '../widgets/onboarding_bottom_section.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(28, 36, 28, 0),
              child: Text(
                'DRIVEN BY SCIENCE, FEELS LIKE MAGIC',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 33,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.8,
                  height: 1.15,
                ),
              ),
            ),
          ),
          const Expanded(child: AppPreviewMockup()),
          const OnboardingBottomSection(),
        ],
      ),
    );
  }
}
