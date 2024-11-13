import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_note_cubit/add_notes_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddNoteBottemSheet extends StatelessWidget {
  const AddNoteBottemSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print('failed ${state.errMessage}');
          }
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: SingleChildScrollView(child: AddNoteForm()),
              ));
        },
      ),
    );
  }
}
