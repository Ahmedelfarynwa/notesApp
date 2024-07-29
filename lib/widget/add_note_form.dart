
import 'package:flutter/material.dart';

import 'custom_text_fild.dart';
import 'custtom_botton.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMod = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMod,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomTextFild(
            onSaved: (value) => title = value,
            hint: 'title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFild(
            onSaved: (value) => subTitle = value,
            hint: 'content',
            maxlins: 5,
          ),
          const SizedBox(
            height: 70,
          ),
          CusttomBotton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMod = AutovalidateMode.always;
                setState(() {
                
              });
              }
              
            },
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
