import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newquist_dev/util/constants.dart';
import 'package:newquist_dev/work_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(250),
            child: Image.asset(
              'assets/profile.jpg',
              fit: BoxFit.cover,
              height: 250,
              width: 250,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            'ABOUT ME',
            style: title,
          ),
        ),
        const Text(
          'Mobile Developer since 2015, primarily focused with development in Flutter\n'
          'Built numerous mobile applications from the ground up as well as ported applications to new standards\n'
          'Trained in Scrum Agile methodologies, having been a scrum master for numerous projects\n'
          'Obtained a Masters in Computer Sciences from University of Louisville\n'
          'Obtained Bachelors in Engineering Mechanics from University of Illinois Urbana-Champaign',
          style: header2,
          textAlign: TextAlign.center,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            'WORK HISTORY',
            style: title,
          ),
        ),
        WorkCard(
          child: Image.asset('assets/ge.jpeg'),
          startDate: DateTime(2019, 4),
        ),
        const SizedBox(
          height: 16,
        ),
        WorkCard(
          child: SvgPicture.asset('assets/cbs.svg'),
          endDate: DateTime(2019, 4),
          startDate: DateTime(2017, 1),
        ),
        const SizedBox(
          height: 16,
        ),
        WorkCard(
          child: Image.asset('assets/vitronic.jpeg'),
          endDate: DateTime(2016, 12),
          startDate: DateTime(2016, 7),
        ),
        const SizedBox(
          height: 16,
        ),
        WorkCard(
          child: Image.asset('assets/horizonhobby.jpeg'),
          endDate: DateTime(2016, 4),
          startDate: DateTime(2015, 6),
        ),
      ],
    );
  }
}
