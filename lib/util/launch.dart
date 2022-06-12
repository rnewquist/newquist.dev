import 'package:flutter/material.dart';

import 'commands.dart';

class Launch {
  Future<void> run(BuildContext context) async {
    if (!hasContext) {
      setContext(context);
    }
    await appProvider.initialize();
    appProvider.showSplash = false;
  }
}
