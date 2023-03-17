import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var customFontX = GoogleFonts.josefinSans(
  textStyle: TextStyle(
      color:lastColors,
      letterSpacing: 3,
      fontSize: 28,
    ),
); 
var customFontO = GoogleFonts.josefinSans(
  textStyle: TextStyle(
      color: opositColors,
      letterSpacing: 3,
      fontSize: 28,
    ),
); 

const firstColors = Color(0xFF682475);
const secondColors = Color(0xFFDA4CF7);
const defaultColors = Color(0xFFA202C2);
const opositColors = Color(0xFFFFFFFF);
const lastColors = Color(0xFF0AA875);