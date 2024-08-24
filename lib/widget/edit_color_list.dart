import 'package:flutter/material.dart';
import 'package:notes_app/model/note_model.dart';

import 'color_item.dart';

class EditColorList extends StatefulWidget {
  const EditColorList({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditColorList> createState() => _EditColorListState();
}

class _EditColorListState extends State<EditColorList> {
  List<Color> colors = const [
    Color(0xff2364AA),
    Color(0xff3DA5D9),
    Color(0xff73BFB8),
    Color(0xff58B2C9),
    Color(0xff3085C2),
  ];
  late int currintIndex;
  @override
  void initState() {
    currintIndex = colors.indexOf(Color(widget.note.color));
    super.initState();
  }

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
                widget.note.color = colors[index].value;
                setState(() {});
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
