import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 24, bottom: 24, right: 16, left: 16),
        decoration: BoxDecoration(
            color: Colors.blueAccent, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: 
                 Text(
                  'Flutter tibs',
                  style: TextStyle(fontSize: 26),
                
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text(
                  'build your carear  withe aelfar',
                  style: TextStyle(
                      fontSize: 20, color: Colors.white.withOpacity(0.5)),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.trash,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                ' 7 jun 2024',
                style: TextStyle(
                    fontSize: 15, color: Colors.white.withOpacity(0.3)),
              ),
            )
          ],
        ));
  }
}
