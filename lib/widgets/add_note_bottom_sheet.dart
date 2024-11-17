import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_note_cubit/add_notes_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddNoteBottemSheet extends StatelessWidget {
  const AddNoteBottemSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: 'titel',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'titel',
              maxLines: 5,
            ),
             SizedBox(
              height: 50,
            ),
             CustomButton(),
             SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
