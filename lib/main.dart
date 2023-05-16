import 'package:dynamic_app_bar_riverpod/tab_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dynamic Sliver App Bar with Riverpod',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        brightness: Brightness.light,
      ),
      home: const AppBarPage(),
    );
  }
}

class AppBarPage extends StatelessWidget {
  const AppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Consumer(
          child: const GridCard(),
          builder: (context, ref, child) => CustomScrollView(
            slivers: [
              SliverAppBar(
                centerTitle: false,
                expandedHeight: 300,
                pinned: true,
                title: Text(ref.watch(tabControllerProvider).title),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(50),
                  child: TabBar(
                    onTap: (int tabIndex) => ref
                        .read(tabControllerProvider.notifier)
                        .updateTabIndex(tabIndex),
                    indicatorColor: Colors.amber,
                    tabs: const [
                      Tab(
                        text: 'Sponsors',
                      ),
                      Tab(
                        text: 'Alumni',
                      )
                    ],
                  ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage(ref.watch(tabControllerProvider).image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => child,
                  childCount: 30,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GridCard extends StatelessWidget {
  const GridCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Material(color: Colors.yellow),
    );
  }
}
