import 'package:flutter/material.dart';

class NoAnimationPage extends Page {
  const NoAnimationPage({required this.child, LocalKey? key}) : super(key: key);
  final Widget child;
  @override
  Route createRoute(BuildContext context) {
    return PageRouteBuilder(
        maintainState: true,
        transitionDuration: Duration.zero,
        opaque: false,
        reverseTransitionDuration: Duration.zero,
        settings: this,
        pageBuilder: (context, animation, animation2) => child);
  }
}

class SlideAnimationPage extends Page {
  const SlideAnimationPage(
      {required this.child, required this.duration, LocalKey? key})
      : super(key: key);
  final Widget child;
  final Duration duration;
  @override
  Route createRoute(BuildContext context) {
    return PageRouteBuilder(
        maintainState: true,
        transitionDuration: duration,
        reverseTransitionDuration: duration,
        opaque: false,
        settings: this,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);
          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
        pageBuilder: (context, animation, animation2) => child);
  }
}

class FadeAnimationPage extends Page {
  const FadeAnimationPage(
      {required this.child, required this.duration, LocalKey? key})
      : super(key: key);
  final Widget child;
  final Duration duration;

  @override
  Route createRoute(BuildContext context) {
    return PageRouteBuilder(
      maintainState: true,
      transitionDuration: duration,
      reverseTransitionDuration: duration,
      opaque: false,
      settings: this,
      pageBuilder: (context, animation, animation2) => FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }
}
