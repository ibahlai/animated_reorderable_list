import 'package:flutter/cupertino.dart';

class ItemTransitionData {
  final Offset startOffset;
  final Offset endOffset;
  final Duration delay;
  final Duration animationDuration;
  final bool visible;
  final bool animate;

  ItemTransitionData(
      {this.startOffset = Offset.zero,
        this.endOffset = Offset.zero,
        this.visible = true,
        this.animate = false,
        this.delay = Duration.zero,
        this.animationDuration = Duration.zero
      });

  ItemTransitionData copyWith(
      {Offset? startOffset, Offset? endOffset, bool? visible, Duration? delay, Duration? animationDuration, bool? animate}) {
    return ItemTransitionData(
        startOffset: startOffset ?? this.startOffset,
        endOffset: endOffset ?? this.endOffset,
        visible: visible ?? this.visible,
        animationDuration: animationDuration ?? this.animationDuration,
        delay: delay ?? this.delay,
        animate: animate ?? this.animate);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is ItemTransitionData &&
              runtimeType == other.runtimeType &&
              startOffset == other.startOffset &&
              animationDuration == other.animationDuration &&
              endOffset == other.endOffset &&
              delay == other.delay &&
              animate == other.animate;

  @override
  int get hashCode => Object.hash(startOffset, endOffset, visible, animate, delay, animationDuration);

  @override
  String toString() {
    return 'ItemTransitionData{startOffset: $startOffset, endOffset: $endOffset, visible: $visible, animate: $animate, delay: ${delay.inMilliseconds}, animationDuration: ${animationDuration.inMilliseconds}';
  }
}
