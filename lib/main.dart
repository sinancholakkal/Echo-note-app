import 'package:echo_note_app/domain/delete_note/bloc/delete_bloc.dart';
import 'package:echo_note_app/domain/get_notes/bloc/get_notes_bloc.dart';
import 'package:echo_note_app/domain/post_note/bloc/post_note_bloc.dart';
import 'package:echo_note_app/presentation/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetNotesBloc(),
        ),
        BlocProvider(
          create: (context) => PostNoteBloc(),
        ),
        BlocProvider(
          create: (context) => DeleteBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
    
  }
}
