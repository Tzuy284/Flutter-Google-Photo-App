import 'package:flutter/material.dart';

class ContactLabel extends StatelessWidget {
  const ContactLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Don’t have an account? ',
            style: TextStyle(
              color: Color(0xFF1D1929),
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              height: 0.12,
            ),
          ),
          TextSpan(
            text: 'Contact us',
            style: TextStyle(
              color: Color(0xFF5668FF),
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              height: 0.12,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
