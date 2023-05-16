import 'package:dynamic_app_bar_riverpod/state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TabController extends StateNotifier<TabState> {
  TabController() : super(TabState.initial());

  void updateTabIndex(int index) {
    state = state.copyWith(tabIndex: index);
  }
}

final tabControllerProvider =
    StateNotifierProvider<TabController, TabState>((ref) => TabController());
