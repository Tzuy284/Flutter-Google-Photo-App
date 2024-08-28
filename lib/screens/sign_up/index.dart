import 'package:flutter/material.dart';

import '../../widgets/screen.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Screen(
      child: Center(
        child: Text(
          'Sign Up Screen',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
