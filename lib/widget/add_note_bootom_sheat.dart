import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'add_note_form.dart';


class AddNoteBottomSheat extends StatelessWidget {
  const AddNoteBottomSheat({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocListener<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {}
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
            
          }
        },
          child:  Padding(
            padding:  EdgeInsets.only(left: 16,right: 16,bottom: MediaQuery.of(context).viewInsets.bottom),
            child: const SingleChildScrollView(child: AddNoteForm()),
          ),
      
      ),
    );
  }
}
