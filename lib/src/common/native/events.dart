sealed class NativeEvent {
  const NativeEvent();
}

final class BezelNativeEvent extends NativeEvent {
  final double rotationValue;
  const BezelNativeEvent(this.rotationValue);
}
