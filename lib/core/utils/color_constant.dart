import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blueGray100 = fromHex('#d9d9d9');

  static Color black9004d = fromHex('#4d000000');

  static Color black900 = fromHex('#000000');

  static Color blueGray400 = fromHex('#888888');

  static Color redA200 = fromHex('#fd6161');

  static Color blueGray900 = fromHex('#262b35');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray50 = fromHex('#f9fbff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
