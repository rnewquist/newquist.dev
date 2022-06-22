import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newquist_dev/util/commands.dart';

class NavigatorBar extends StatelessWidget {
  const NavigatorBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () => appProvider.section = '',
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 32,
              ),
              child: SvgPicture.asset(
                'assets/logo.svg',
                width: 50,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  onPressed: () => appProvider.section = 'about',
                  onHover: (isHovering) {},
                  child: const Text(
                    'About',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                TextButton(
                  onPressed: () => appProvider.section = 'applications',
                  onHover: (isHovering) {},
                  child: const Text(
                    'Apps',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
