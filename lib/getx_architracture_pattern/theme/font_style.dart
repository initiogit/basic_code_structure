
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/common_size/nk_font_size.dart';
import 'color/colors.dart';

/// [NkGetXFontStyle] USE CUSTOM FONT

class NkGetXFontStyle {
  static TextTheme get textLightTheme => ThemeData().textTheme.apply(
        fontFamily: GoogleFonts.dmSans(
                color: primaryTextColor, fontSize: NkFontSize.regularFont())
            .fontFamily,
      );
}
