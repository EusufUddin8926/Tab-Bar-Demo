import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Fragment/AlarmFragment.dart';
import 'Fragment/CommentFragment.dart';
import 'Fragment/EmailFragment.dart';
import 'Fragment/HomeFragment.dart';
import 'Fragment/ProfileFragment.dart';
import 'Fragment/SearchFragment.dart';
import 'Fragment/SettingsFragment.dart';
import 'Fragment/TimeFragment.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabBarDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Tab bar demo"),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Home"),
                Tab(icon: Icon(Icons.comment), text: "Comment"),
                Tab(icon: Icon(Icons.person), text: "Profile"),
                Tab(icon: Icon(Icons.email), text: "Email"),
                Tab(icon: Icon(Icons.search), text: "Search"),
                Tab(icon: Icon(Icons.settings), text: "Settings"),
                Tab(icon: Icon(Icons.access_alarm), text: "Alarm"),
                Tab(icon: Icon(Icons.access_time), text: "Time")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomeFragment(),
              CommentFragment(),
              ProfileFragment(),
              EmailFragment(),
              SearchFragment(),
              SettingsFragment(),
              AlarmFragment(),
              TimeFragment()
            ],
          ),
        ));
  }
}
