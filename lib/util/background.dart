import 'package:flutter/material.dart';

import 'custom_clips.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.backgroundColor,
    this.background,
    required this.backgroundColorSecondary,
    required this.backgroundColorAccent,
    this.child,
    this.doesClip = true,
  }) : super(key: key);
  final Color backgroundColor;
  final Color backgroundColorSecondary;
  final Color backgroundColorAccent;
  final Widget? background;
  final Widget? child;
  final bool doesClip;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: backgroundColor,
        ),
        Align(
          alignment: Alignment.topCenter,
          child: FractionallySizedBox(
            heightFactor: doesClip ? 3 / 4 : 1,
            child: ClipPath(
              child: background ??
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [backgroundColor, backgroundColorSecondary],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                    ),
                  ),
              clipper: doesClip ? EdgeClipper() : null,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: FractionallySizedBox(
            heightFactor: 1 / 2,
            child: ClipPath(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    backgroundColorAccent,
                    (backgroundColor),
                  ], begin: const Alignment(0, -1), end: Alignment.bottomLeft),
                ),
              ),
              clipper: TriangleClipper(),
            ),
          ),
        ),
        child ?? const SizedBox()
      ],
    );
  }
}
