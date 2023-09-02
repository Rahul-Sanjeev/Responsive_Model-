import 'package:flutter/material.dart';
import 'package:multiplatformmodel/constants/contants.dart';
import 'package:multiplatformmodel/utilities/my_box_widget.dart';
import 'package:multiplatformmodel/utilities/my_tile_widget.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBGColor,
      appBar: myAppBar,
      body: Row(
        children: [
          // open the drawer;
          myDrawer,
          // rest of body;
          Expanded(
            child: Column(
              children: [
                // 4 Boxes on the Top;
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    height: double.infinity,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      ),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return MyBoxWidget();
                      },
                    ),
                  ),
                ),
                // Tile below it;
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return MyTileWidget();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
