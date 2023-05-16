class Tab {
  static List<TabProperties> properties = [
    TabProperties(
      tabImage: 'assets/images/sponsors.jpg',
      tabTitle: 'Sponsors',
    ),
    TabProperties(
      tabImage: 'assets/images/alumni_11.jpg',
      tabTitle: 'Alumni',
    ),
  ];
}

class TabProperties {
  TabProperties({required this.tabImage, required this.tabTitle});
  final String tabImage;
  final String tabTitle;
}
