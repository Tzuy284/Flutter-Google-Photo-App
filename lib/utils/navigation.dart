import 'package:flutter/material.dart';

class NavigationDirect {
  const NavigationDirect(this.context);

  final BuildContext context;

  void goBack() {
    Navigator.pop(context);
  }

  void navigate(Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}
