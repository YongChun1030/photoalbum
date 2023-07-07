import 'package:flutter/material.dart';
import 'package:photo_album_app/screens/pin_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const PhotoAlbumApp());
}

class PhotoAlbumApp extends StatelessWidget {
  const PhotoAlbumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Album App',
      theme: ThemeData(
        primaryColor: Color(0xFF8510B0),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(217, 58, 232, 1),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Color(0xFFAF42E1),
            ),
          ),
        ),
      ),
      home: PinScreen(),
    );
  }
}
