import 'package:flutter/material.dart';

extension SpaceXY on double {
  SizedBox get spaceX => SizedBox(width: this); // For horizontal space
  SizedBox get spaceY => SizedBox(height: this); // For vertical space
}


/*

extension SpaceXY on Space {
  double get spaceVal => switch(this){
    Space.size2 => SpaceConstant.size2,
    Space.size4  => SpaceConstant.size4 ,
    Space.size6  => SpaceConstant.size6 ,
    Space.size8  => SpaceConstant.size8 ,
    Space.size10 => SpaceConstant.size10,
    Space.size12 => SpaceConstant.size12,
    Space.size14 => SpaceConstant.size14,
    Space.size16 => SpaceConstant.size16,
    Space.size18 => SpaceConstant.size18,
    Space.size20 => SpaceConstant.size20,
    Space.size24 => SpaceConstant.size24,
    Space.size28 => SpaceConstant.size28,
    Space.size32 => SpaceConstant.size32,
    Space.size36 => SpaceConstant.size36,
    Space.size40 => SpaceConstant.size40,
    Space.size48 => SpaceConstant.size48,
    Space.size56 => SpaceConstant.size56,
    Space.size64 => SpaceConstant.size64,
    Space.size72 => SpaceConstant.size72,
    Space.size84 => SpaceConstant.size84,
    Space.size96 => SpaceConstant.size96,
  };
  SizedBox get spaceX => SizedBox(width: spaceVal); // For horizontal space
  SizedBox get spaceY => SizedBox(height: spaceVal); // For vertical space
}


enum Space {
  size2,
  size4,
  size6,
  size8,
  size10,
  size12,
  size14,
  size16,
  size18,
  size20,
  size24,
  size28,
  size32,
  size36,
  size40,
  size48,
  size56,
  size64,
  size72,
  size84,
  size96,
}

class SpaceConstant {
  static const double size2  = 2.0;
  static const double size4  = 4.0;
  static const double size6  = 6.0;
  static const double size8  = 8.0;
  static const double size10 = 10.0;
  static const double size12 = 12.0;
  static const double size14 = 14.0;
  static const double size16 = 16.0;
  static const double size18 = 18.0;
  static const double size20 = 20.0;
  static const double size24 = 24.0;
  static const double size28 = 28.0;
  static const double size32 = 32.0;
  static const double size36 = 36.0;
  static const double size40 = 40.0;
  static const double size48 = 48.0;
  static const double size56 = 56.0;
  static const double size64 = 64.0;
  static const double size72 = 72.0;
  static const double size84 = 84.0;
  static const double size96 = 96.0;
}

*/
