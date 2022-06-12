import 'package:flutter/material.dart';

import 'app_link.dart';

/// Converts browser location strings to [AppLink], and vice-versa.
/// This leans on [AppLink] to the actual parsing, so this is largely boilerplate.
class AppRouteParser extends RouteInformationParser<AppLink> {
  @override
  // Take a url bar location, and create an AppLink from it
  Future<AppLink> parseRouteInformation(RouteInformation routeInformation) async {
    final AppLink link = AppLink.fromLocation(routeInformation.location);
    return link;
  }

  @override
  // Convert an applink into a string used for the browser location
  RouteInformation restoreRouteInformation(AppLink appLink) {
    // Ask the applink to give us a string
    final String location = appLink.toLocation();
    debugPrint('restoreRouteInfo: $location');
    // Pass that string back to the OS so it can update the url bar
    return RouteInformation(location: location);
  }
}