/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

sealed class NativeEvent {
  const NativeEvent();
}

final class BezelNativeEvent extends NativeEvent {
  final double rotationValue;
  const BezelNativeEvent(this.rotationValue);
}
