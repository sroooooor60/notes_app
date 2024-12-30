import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nots_app/constants.dart';
import 'package:nots_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:nots_app/models/not_model.dart';
import 'package:nots_app/simpl_block_observer.dart';
import 'package:nots_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimplBlockObserver();

  Hive.registerAdapter(NotModelAdapter());
  await Hive.openBox<NotModel>(kNotsBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
        useMaterial3: false,
      ),
      home: NotesView(),
    );
  }
}
