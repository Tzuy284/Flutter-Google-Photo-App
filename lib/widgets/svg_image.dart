import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImage extends StatelessWidget {
  const SvgImage({
    super.key,
    required this.width,
    required this.height,
    required this.path,
    this.color,
  });

  final double width;
  final double height;
  final String path;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      width: width,
      height: height,
      colorFilter:
          color == null ? null : ColorFilter.mode(color!, BlendMode.srcIn),
    );
  }
}
