import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/widget/color_list_view.dart';

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
          const ColorListView(),
          const SizedBox(
            height: 70,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CusttomBotton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formatCurrentDate =
                        DateFormat.yMd().format(currentDate);
                    var noteModel = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: formatCurrentDate,
                        color: Colors.blue.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMod = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
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
