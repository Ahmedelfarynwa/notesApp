import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_app-bar.dart';
import 'package:notes_app/widget/custom_text_fild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(height: 30,),
          CustomTextFild(hint: 'Tittle'),
          SizedBox(height: 15,),
          CustomTextFild(hint: 'Contint',maxlins: 5 ,),
        ],
      ),
    );
  }
}
