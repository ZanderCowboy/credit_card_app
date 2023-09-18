import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  useMaterial3: true,
  primaryColorDark: Colors.blue[800],
  primaryColor: Colors.purple[800],
  textTheme: TextTheme(
    titleLarge: GoogleFonts.hind(
      fontSize: 24,
      fontStyle: FontStyle.normal,
    ),
  ),
);
