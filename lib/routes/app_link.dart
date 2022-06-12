class AppLink {
  AppLink({this.section});
  String? section;

  factory AppLink.fromLocation(String? location) {
    location ??= '/';
    var section = location.split('/')[1].split('?').first;
    return AppLink(section: section);
  }

  String toLocation() {
    return '/$section';
  }
}
