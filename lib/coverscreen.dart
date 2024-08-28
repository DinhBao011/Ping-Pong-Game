import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoverScreen extends StatelessWidget {
  final bool hasGameStarted;
  //font
  static var gameFont = GoogleFonts.pressStart2p(
      textStyle: TextStyle(
          color: Colors.deepPurple[600], letterSpacing: 0, fontSize: 28));

  CoverScreen({required this.hasGameStarted});

  @override
  Widget build(BuildContext context) {
    return hasGameStarted
        ? Container()
        : Stack(
            children: [
              Container(
                alignment: Alignment(0, -0.1),
                child: Text(
                  'BRICK BRICKER',
                  style: gameFont,
                ),
              ),
              Container(
                alignment: Alignment(0, 0.1),
                child: Text(
                  'Tap to play',
                  style: TextStyle(color: Colors.deepPurple[400]),
                ),
              )
            ],
          );
  }
}
