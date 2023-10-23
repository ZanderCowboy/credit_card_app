import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Logo widget to display a background image
class LogoWidget extends StatelessWidget {
  /// Empty constructor
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: const Color(0xFFAF8D45),
          width: double.infinity,
          height: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: 20,
              // ),
              // Image.asset(
              //   'assets/logo.png',
              //   fit: BoxFit.cover,
              //   // fit: BoxFit.scaleDown,
              // ),
              // BackdropFilter(
              //   filter: ImageFilter.blur(
              //     sigmaX: 0.5,
              //     sigmaY: 0.5,
              //   ),
              //   child: Container(
              //     color: Colors.white.withOpacity(0.05),
              //   ),
              // ),
              // SizedBox(
              //   height: 90,
              // ),
              ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Center(
                  child: Text(
                    'BACKGROUND',
                    style: GoogleFonts.ubuntu(
                      textStyle: const TextStyle(
                        fontSize: 90,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                        color: Colors.white,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
