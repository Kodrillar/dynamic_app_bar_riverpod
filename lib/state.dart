import 'package:dynamic_app_bar_riverpod/tab.dart';

class TabState {
  TabState({required this.tabIndex});

  final int tabIndex;

  factory TabState.initial() => TabState(tabIndex: 0);

  String get image => Tab.properties[tabIndex]!.tabImage;
  String get title => Tab.properties[tabIndex]!.tabTitle;

  TabState copyWith({int? tabIndex}) =>
      TabState(tabIndex: tabIndex ?? this.tabIndex);
}
