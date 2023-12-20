import 'package:basic_flutter_animations/dualsense/dualsense.dart';
import 'package:basic_flutter_animations/onboarding/onboarding.dart';
import 'package:basic_flutter_animations/pepsi/pepsi.dart';
import 'package:basic_flutter_animations/progress_button/progress_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabbed Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyTabbedApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyTabbedApp extends StatefulWidget {
  @override
  _MyTabbedAppState createState() => _MyTabbedAppState();
}

class _MyTabbedAppState extends State<MyTabbedApp>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
          DualSense(),
          Onboarding(),
          Pepsi(),
          ProgressButton(),
          SharinganLoader(),
        ],
      ),
    );
  }
}

class SharinganLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Content for SharinganLoader',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
