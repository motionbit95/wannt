import 'package:flutter/material.dart';
import 'package:wannt/screen/home_screen.dart';
import 'package:wannt/screen/feed_screen.dart';
import 'package:wannt/screen/wish_screen.dart';
import 'package:wannt/screen/my_screen.dart';
import 'package:wannt/widget/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wannt',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: const MainTabController(),
    );
  }
}

class MainTabController extends StatelessWidget {
  const MainTabController({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            HomeScreen(),
            FeedScreen(),
            WishScreen(),
            MyScreen(),
          ],
        ),
        bottomNavigationBar: const BottomBar(),
      ),
    );
  }
}
