import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noteapp/notes/routes/edit_note/edit_note_page.dart';
import 'package:noteapp/notes/routes/home/home_page.dart';
import 'package:noteapp/common/home_page.dart';
import 'package:noteapp/common/not_found_page.dart';
import 'package:noteapp/notes/routes/search_note/search_note.dart';

class Routes {
  const Routes._();

  // Named route to navigate home page.
  static const String home = '/';
  static const String notesHome = '/notes';
  static const String editNote = '/edit-note';
  static const String searchNote = '/search-note';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case editNote:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const EditNotePage(),
        );

      case home:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const HomePage(),
        );
      case notesHome:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const NotesHomePage(),
        );
      case searchNote:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const SearchNotePage(),
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const NotFoundPage(),
        );
    }
  }

  // Returns a initial routes based in initialRoute name.
  static List<Route<dynamic>> generateInitialRoutes(String initialRoute) {
    return [
      generateRoute(const RouteSettings(name: home)),
    ];
  }
}
