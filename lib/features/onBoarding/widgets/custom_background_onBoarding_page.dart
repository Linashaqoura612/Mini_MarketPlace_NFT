import 'package:flutter/material.dart';

import '../../../core/resources/asset_image_manager.dart';

class CustomBackgroundOnboardingPage extends StatelessWidget {
  const CustomBackgroundOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Image(
      image: AssetImage(AssetImageManager.onBoardingBackgroundImage),
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
