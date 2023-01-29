import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#7f000000');

  static Color orangeA200 = fromHex('#dd993c');

  static Color pink20099 = fromHex('#99cf7da5');

  static Color black90090 = fromHex('#90000000');

  static Color black9000c = fromHex('#0c000000');

  static Color greenA400 = fromHex('#15ce73');

  static Color whiteA700Cc = fromHex('#ccffffff');

  static Color blueGray90090 = fromHex('#902b2b2b');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color green30099 = fromHex('#9994cf7d');

  static Color deepOrange300 = fromHex('#f6795b');

  static Color lightGreen50 = fromHex('#ecffe6');

  static Color black90019 = fromHex('#19000000');

  static Color greenA400Cc = fromHex('#cc15ce73');

  static Color blueGray900 = fromHex('#2b2b2b');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
