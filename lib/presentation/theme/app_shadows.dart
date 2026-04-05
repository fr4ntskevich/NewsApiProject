import 'package:flutter/painting.dart';

abstract final class AppShadows {
  static const Offset _cardOffset = Offset(0, 3);
  static const double _cardBlurRadius = 6.1;

  static BoxShadow card(Color color) => BoxShadow(
        color: color,
        offset: _cardOffset,
        blurRadius: _cardBlurRadius,
      );
}
