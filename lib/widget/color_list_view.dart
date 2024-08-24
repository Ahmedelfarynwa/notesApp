import 'package:flutter/material.dart';
import 'package:notes_app/widget/color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currintIndex = 0;
  List<Color> colors=const[
    Color(0xff2364AA),
        Color(0xff3DA5D9),
    Color(0xff73BFB8),
    Color(0xff58B2C9),
    Color(0xff3085C2),

  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: GestureDetector(
              onTap: () {
                currintIndex = index;
                setState(() {
                  
                });
              },
              child: ColorItem(
                color: colors[index],
                isActive: currintIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
