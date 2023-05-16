class Tab {
  static Map<int, TabProperties> properties = {
    0: TabProperties(
      tabImage: 'assets/images/sponsors.jpg',
      tabTitle: 'Sponsors',
    ),
    1: TabProperties(
      tabImage: 'assets/images/alumni_11.jpg',
      tabTitle: 'Alumni',
    ),
  };
}

class TabProperties {
  TabProperties({required this.tabImage, required this.tabTitle});
  final String tabImage;
  final String tabTitle;
}
