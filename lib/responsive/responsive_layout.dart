import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
    required ThemeData theme,
  });
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // return the statement is if else if statement;
        return constraints.maxWidth < 500
            ? mobileScaffold
            : constraints.maxWidth < 1100
                ? tabletScaffold
                : desktopScaffold;
      },
    );
  }
}
