import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newquist_dev/util/commands.dart';
import 'package:url_launcher/url_launcher.dart';

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
            Wrap(
              children: [
                IconButton(
                  onPressed: () {
                    launchUrl(
                        Uri.parse('https://github.com/rnewquist'));
                  },
                  icon: const Icon(
                    FontAwesomeIcons.github,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    launchUrl(
                        Uri.parse('https://www.linkedin.com/in/rnewquist/'));
                  },
                  icon: const Icon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    launchUrl(
                        Uri.parse('https://www.instagram.com/newquistryanmichael/'));
                  },
                  icon: const Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
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
