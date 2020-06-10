import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// COLORS
const kColorWine = Color(0xFF990033);
const kColorWine2 = Color(0xFF6B1738);
const kColorBlue = Color(0xFF256182);
const kColorBlue2 = Color(0xFF1E485E);
const kColorGreen = Color(0xFF4B905F);
const kColorGreen2 = Color(0xFF2B6D3F);
const kColorGrey = Color(0xFF404041);
const kColorBackground = Color(0xFFF1F4F7);

//GRADIENTS
const kLinearGradientGrey = LinearGradient(
  begin: Alignment(0.0, -1.0),
  end: Alignment(0.0, 1.0),
  colors: [const Color(0xff404142), const Color(0xff0d0d0d)],
  stops: [0.0, 1.0],
);

//TEXTSTYLES
TextStyle kTitleWhite = GoogleFonts.quicksand(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w700
);

TextStyle kLoginStyle = GoogleFonts.quicksand(
  color: kColorGrey,
  fontSize: 40,
  fontWeight: FontWeight.w500
);

