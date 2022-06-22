import 'package:flutter/material.dart';
import 'package:newquist_dev/util/commands.dart';
import 'package:newquist_dev/util/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class AppCard extends StatelessWidget {
  const AppCard(
      {required this.child,
      required this.name,
      this.androidURL,
      this.iosURL,
      Key? key})
      : super(key: key);
  final Widget child;
  final String? androidURL;
  final String? iosURL;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 8,
      child: SizedBox(
        width: 200,
        height: 280,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                name,
                style: header2,
              ),
              const SizedBox(
                height: 8,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: SizedBox(
                  height: 168,
                  width: 168,
                  child: Center(child: child),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: Center(
                  child: iosURL == null && androidURL == null
                      ? const Text(
                          'COMING SOON',
                          style: header2,
                        )
                      : FittedBox(
                        fit: BoxFit.contain,
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (androidURL != null)
                                TextButton(
                                  onPressed: () {
                                    appProvider.onURLPress(androidURL!);
                                  },
                                  child: const Text(
                                    'Android',
                                    style: header2,
                                  ),
                                ),
                              if (iosURL != null)
                                TextButton(
                                  onPressed: () {
                                    appProvider.onURLPress(iosURL!);
                                  },
                                  child: const Text(
                                    'iOS',
                                    style: header2,
                                  ),
                                ),
                            ],
                          ),
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
