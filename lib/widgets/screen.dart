import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Screen extends StatelessWidget {
  const Screen({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, __) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: MediaQuery.of(context).size.width / 375,
            ),
            child: Scaffold(
              appBar: AppBar(
                toolbarHeight: 0,
                elevation: 0,
                systemOverlayStyle: const SystemUiOverlayStyle(
                  statusBarColor: Colors.transparent,
                  statusBarIconBrightness:
                      Brightness.dark, // For Android (dark icons)
                  statusBarBrightness: Brightness.light, // For iOS (dark icons)
                ),
              ),
              body: SafeArea(
                bottom: false,
                child: child,
              ),
            ),
          );
        });
  }
}
