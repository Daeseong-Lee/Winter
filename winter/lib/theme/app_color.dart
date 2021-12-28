import 'package:flutter/material.dart';

class AppColor {
  static const MaterialColor primary = MaterialColor(
    0xFF5C4FE1,
    <int, Color>{
      50: Color(0xFFEBEBFC),
      100: Color(0xFFCDCCF7),
      200: Color(0xFFACABF2),
      300: Color(0xFF8A89ED),
      400: Color(0xFF716CE8),
      500: Color(0xFF5C4FE1),
      600: Color(0xFF5646D5),
      700: Color(0xFF4D3AC9),
      800: Color(0xFF462EBD),
      900: Color(0xFF3A11AA),
    },
  );

  static const Color secondary = Color(0xFFDDFF53);

  static const Color eButtonTextColor = Color(0xFFFFFFFF);
  static const Color tButtonTextColor = Color(0xFF5C4FE1);
  static const Color buttonTextDisabled = Color(0xFF969696);

  static const Color primaryTextColor = Color(0xFFFFFFFF);
  static const Color accentTextColor = Color(0x99FFFFFF);

  static const Color pressed = Color(0xFFEBEBFC);
  static const Color hover = Color(0x0A5C4FE1);
  static const Color focused = Color(0x00334fe1);
  static const Color dragged = Color(0x295C4FE1);

  static const Color white = Color(0xFFFFFFFF);
}
