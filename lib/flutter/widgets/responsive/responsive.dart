import 'package:flutter/material.dart';

class ResponsiveSystem extends StatelessWidget {
  final int mobileSize;
  final Widget mobileBody;
  final Widget desktopBody;
  const ResponsiveSystem(
      {super.key,
      required this.mobileSize,
      required this.mobileBody,
      required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < mobileSize) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
