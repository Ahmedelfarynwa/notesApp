import 'package:flutter/material.dart';
import 'package:notes_app/widget/custtom_botton.dart';

import 'custom_text_fild.dart';

class AddNoteBottomSheat extends StatelessWidget {
  const AddNoteBottomSheat({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            CustomTextFild(
              hint: 'title',          ),
            SizedBox(
              height: 16,
            ),
            CustomTextFild(
              hint: 'content',
              maxlins: 5 ,
            ),
            SizedBox(height: 70,),
            CusttomBotton(),
                        SizedBox(height: 15,),

          ],
        ),
      ),
    );
  }
}
