/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handygram/src/common/log/log.dart';

/// Scales UI, making it looking the same as on 227x227dp screen
class Scaling extends Cubit<double> {
  static const String tag = "Scaling";

  // Most of these variables are put to explain why 227 and 0.473 :D
  static const double _kFigmaFrameSize = 480, _kBaseScreenSize = 227;
  static const double _kFigmaFrameScalingFactor =
      _kBaseScreenSize / _kFigmaFrameSize; // 0.47291666666666665
  static const double _kBaseSize = _kFigmaFrameSize * _kFigmaFrameScalingFactor;

  Size _screenSize = const Size.square(_kBaseSize);
  double _devicePixelRatio = 1;
  double _userScale = 1;

  double get userScale => _userScale;

  void _recalculateScale() {
    final factor = _screenSize.shortestSide / _kBaseSize * _userScale;
    if (factor != 1) {
      l.d(tag,
          "Scale factor: $factor (${_screenSize.shortestSide} / $_kBaseSize * $_userScale)");
      emit(factor);
    }
  }

  set userScale(double scale) {
    _userScale = scale;
    _recalculateScale();
  }

  void setSystemScreenResolution(
    Size screenSize,
    double devicePixelRatio,
  ) {
    _screenSize = screenSize;
    _devicePixelRatio = devicePixelRatio;
    _recalculateScale();
  }

  /// [Size] * [Scaling.factor] = perfect [Size]!
  static double get factor => instance.state;

  /// Use this instead of [factor] only in places where the size
  /// is being calculated using the values from [MediaQuery.size]
  static double get userFactor => instance.userScale;

  /// Screen size in logical pixels
  static Size get screenSize => instance._screenSize;

  /// Screen size in physical pixels
  static Size get physicalScreenSize =>
      instance._screenSize * instance._devicePixelRatio;

  Scaling._() : super(1);
  static Scaling instance = Scaling._();
  factory Scaling() => instance;
}
