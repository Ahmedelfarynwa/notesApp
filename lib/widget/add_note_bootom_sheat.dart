import 'package:flutter/material.dart';
import 'package:notes_app/widget/custtom_botton.dart';

import 'custom_text_fild.dart';

class AddNoteBottomSheat extends StatelessWidget {
  const AddNoteBottomSheat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

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
