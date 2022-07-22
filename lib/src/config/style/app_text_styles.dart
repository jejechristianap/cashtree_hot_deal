import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  /// Font Weight Charts
  /// w100 = Thin
  /// w200 = Extra Light
  /// w300 = Light
  /// w400 = Normal (Regular)
  /// w500 = Medium
  /// w600 = Semi Bold
  /// w700 = Bold
  /// w800 = Extra Bold
  /// w900 = Black

  static TextStyle title = GoogleFonts.nunito(
      textStyle: const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w900,
    color: Colors.black,
  ));

  static const heading1 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w800,
    color: Colors.black,
  );

  static const heading2 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static const heading3 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static const body = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
  );

  static const buttonTitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}
