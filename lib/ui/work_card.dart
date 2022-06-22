import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:newquist_dev/util/constants.dart';

class WorkCard extends StatelessWidget {
  const WorkCard(
      {required this.child, required this.startDate, this.endDate, Key? key})
      : super(key: key);
  final Widget child;
  final DateTime startDate;
  final DateTime? endDate;

  String get date =>
      '${DateFormat("MMMM yyyy").format(startDate)} - ${endDate != null ? DateFormat("MMMM yyyy").format(endDate!) : 'Present'}';

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 8,
      child: SizedBox(
        width: 500,
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Flexible(
                flex: 2,
                child: child,
              ),
              Flexible(
                flex: 1,
                child: Center(
                  child: Text(
                    date,
                    style: header2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
