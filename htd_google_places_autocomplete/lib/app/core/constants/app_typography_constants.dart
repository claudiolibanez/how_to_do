import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:googleplacesautocomplete/app/core/constants/app_constants.dart';

class AppTypographyConstants {
  static final TextStyle button = GoogleFonts.roboto(
    color: AppColorConstants.white,
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle label = GoogleFonts.roboto(
    color: AppColorConstants.black,
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
  );
}
