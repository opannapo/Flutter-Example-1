import 'package:flutter/material.dart';

class TextStyleConst {
  /*Normal 12*/
  static TextStyle n12({Color color}) {
    return new TextStyle(
      color: color ?? Colors.black,
      letterSpacing: 1,
      fontSize: 12,
      fontFamily: 'helvetica',
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle n14({Color color}) {
    return new TextStyle(
      color: color ?? Colors.black,
      letterSpacing: 1,
      fontSize: 14,
      fontFamily: 'helvetica',
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle n16({Color color}) {
    return new TextStyle(
      color: color ?? Colors.black,
      letterSpacing: 1,
      fontSize: 16,
      fontFamily: 'helvetica',
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle n20({Color color, double letterSpacing}) {
    return new TextStyle(
      color: color ?? Colors.black,
      letterSpacing: letterSpacing ?? 1,
      fontSize: 20,
      fontFamily: 'helvetica',
      fontWeight: FontWeight.normal,
    );
  }

  /*BOld  12*/
  static TextStyle b12({Color color, double letterSpacing}) {
    return new TextStyle(
      color: color ?? Colors.black,
      letterSpacing: letterSpacing ?? 1,
      fontSize: 12,
      fontFamily: 'helvetica',
      fontWeight: FontWeight.bold,
    );
  }

  /*BOld  14*/
  static TextStyle b14({Color color, double letterSpacing}) {
    return new TextStyle(
      color: color ?? Colors.black,
      letterSpacing: letterSpacing ?? 1,
      fontSize: 14,
      fontFamily: 'helvetica',
      fontWeight: FontWeight.bold,
    );
  }

  /*BOld  16*/
  static TextStyle b16({Color color, double letterSpacing}) {
    return new TextStyle(
      color: color ?? Colors.black,
      letterSpacing: letterSpacing ?? 1,
      fontSize: 16,
      fontFamily: 'helvetica',
      fontWeight: FontWeight.bold,
    );
  }
}
