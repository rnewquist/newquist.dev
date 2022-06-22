import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newquist_dev/util/constants.dart';

import '../ui/app_card.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            'PERSONAL APPLICATIONS',
            style: title,
          ),
        ),
        Wrap(
          children: [
            AppCard(
              name: 'Distilled',
              child: SvgPicture.asset('assets/distilled.svg'),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            'WORK APPLICATIONS',
            style: title,
          ),
        ),
        Wrap(
          alignment: WrapAlignment.center,
          children: [
            AppCard(
              name: 'CNET',
              child: Image.asset('assets/cnet.png'),
              iosURL:
                  'https://apps.apple.com/us/app/cnet-news-advice-deals/id1553808884',
              androidURL:
                  'https://play.google.com/store/apps/details?id=com.cbsinteractive.cnet&hl=en&gl=US',
            ),
            AppCard(
              name: 'TVGUIDE',
              child: Image.asset('assets/tvguide.png'),
              iosURL:
                  'https://apps.apple.com/us/app/tv-guide-streaming-live-tv/id333647776',
              androidURL:
                  'https://play.google.com/store/apps/details?id=com.tvguidemobile&hl=en&gl=US',
            ),
            AppCard(
              name: 'SmartHQ',
              child: Image.asset('assets/smarthq.png'),
              iosURL: 'https://apps.apple.com/us/app/smarthq/id992883749',
              androidURL:
                  'https://play.google.com/store/apps/details?id=com.ge.kitchen&hl=en&gl=US',
            ),
            AppCard(
              name: 'Kitchen Hub',
              child: Image.asset('assets/kitchenhub.jpeg'),
              iosURL: 'https://apps.apple.com/us/app/kitchen-hub/id1505244213',
              androidURL:
                  'https://play.google.com/store/apps/details?id=com.geappliances.uplusconnect&hl=en&gl=US',
            ),
            AppCard(
              name: 'Launderday',
              child: Image.asset('assets/launderday.webp'),
              iosURL: 'https://apps.apple.com/us/app/launderday/id1556674453',
              androidURL:
                  'https://play.google.com/store/apps/details?id=com.ge.commerciallaundry&hl=en&gl=US',
            ),
            AppCard(
              name: 'Flavorly',
              child: Image.asset('assets/flavorly.png'),
              androidURL:
                  'https://play.google.com/store/apps/details?id=com.geappliances.recipehub&hl=en&gl=US',
            ),
          ],
        ),
      ],
    );
  }
}
