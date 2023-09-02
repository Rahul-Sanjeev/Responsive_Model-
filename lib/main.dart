import 'package:flutter/material.dart';
import 'package:multiplatformmodel/responsive/responsive_layout.dart';
import 'package:multiplatformmodel/scaffolds/desktop_scaffold.dart';
import 'package:multiplatformmodel/scaffolds/mobile_scaffold.dart';
import 'package:multiplatformmodel/scaffolds/tablet_scaffols.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: const MobileScaffold(),
        tabletScaffold: const TabletScaffold(),
        desktopScaffold: const DesktopScaffold(),
        theme: ThemeData(primarySwatch: Colors.deepPurple),
      ),
    );
  }
}
