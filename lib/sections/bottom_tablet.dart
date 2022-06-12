import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newquist_dev/util/commands.dart';

class BottomTableSection extends StatelessWidget {
  const BottomTableSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.red,
      child: Center(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          direction: Axis.vertical,
          children: [
            SvgPicture.asset(
              'assets/logo.svg',
              color: Colors.white,
              width: 150,
            ),
            const SizedBox(
              height: 32,
            ),
            TextButton(
              onPressed: () => appProvider.section = 'privacy_policy',
              onHover: (isHovering) {},
              child: const Text(
                'Privacy Policy',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextButton(
              onPressed: () => appProvider.section = '',
              onHover: (isHovering) {},
              child: const Text(
                'To The Top',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
