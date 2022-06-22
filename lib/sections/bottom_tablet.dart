import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newquist_dev/util/commands.dart';

class BottomTableSection extends StatelessWidget {
  const BottomTableSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: Container(
        height: 300,
        color: Colors.white,
        child: Center(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.vertical,
            children: [
              SvgPicture.asset(
                'assets/logo.svg',
                color: Colors.black,
                width: 150,
              ),
              const SizedBox(
                height: 32,
              ),
              Wrap(
                children: [
                  IconButton(
                    key: const ValueKey('github_link'),
                    onPressed: () {
                      appProvider.onURLPress(
                          'https://github.com/rnewquist');
                    },
                    icon: const Icon(
                      FontAwesomeIcons.github,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    key: const ValueKey('linkedin_link'),
                    onPressed: () {
                      appProvider.onURLPress(
                          'https://www.linkedin.com/in/rnewquist/');
                    },
                    icon: const Icon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    key: const ValueKey('instagram_link'),
                    onPressed: () {
                      appProvider.onURLPress(
                          'https://www.instagram.com/newquistryanmichael/');
                    },
                    icon: const Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.black,
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
                  style: TextStyle(color: Colors.black, fontSize: 14),
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
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
