import 'package:flutter/material.dart';
import 'package:photo_google_api/screens/welcome/widgets/contact_label.dart';

import '../../widgets/screen.dart';



class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Screen(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'VCLASD',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const ContactLabel(),
        ],
      ),
    );
  }
}
