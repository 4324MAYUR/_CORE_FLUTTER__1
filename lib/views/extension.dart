import 'package:flutter/material.dart';
extension MySize on int 
{
  SizedBox toHeight() => SizedBox(
        height: toDouble(),
      );
  SizedBox toWidth() => SizedBox(
        width: toDouble(),
      );
}
//  string uppercase convered
extension Stringval on String 
{
  String get tcase => replaceFirst(this[0], this[0].toUpperCase());
}
