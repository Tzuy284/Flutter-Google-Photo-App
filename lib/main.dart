
import 'package:flutter/material.dart';
import 'package:photo_google_api/providers/user_provider.dart';
import 'package:photo_google_api/screens/welcome/index.dart';
import 'package:photo_google_api/styles/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GooglePhotoAPI',
        theme: mainTheme(),
        home: const WelcomeScreen(),
      ),
    );
  }
}
