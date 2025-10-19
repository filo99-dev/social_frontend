import 'package:flutter/material.dart';

abstract class Dimens {
  const Dimens();

  //per separare elementi di UI
  static const paddingHorizontal = 20.0;
  static const paddingVertical = 24.0;

  //getter abstract valori puri per padding
  double get paddingScreenHorizontal;
  double get paddingScreenVertical;
  double get profilePicSize;

  //EdgeInsets basati sui valori del padding
  EdgeInsets get edgeInsetsScreenHorizontal =>
      EdgeInsets.symmetric(horizontal: paddingHorizontal);
  EdgeInsets get edgeInsetsScreenSymmetric => EdgeInsets.symmetric(
    horizontal: paddingHorizontal,
    vertical: paddingVertical,
  );

  static const compact = _DimensCompact();
  static const medium = _DimensMedium();
  static const expanded = _DimensExpanded();

  factory Dimens.of(BuildContext context) => switch (MediaQuery.sizeOf(
    context,
  ).width) {
    < 600 => compact,
    > 600 && < 839 => medium,
    _ => expanded,
  };
  //dimensions basate sulle "window sizes" del material design
}

//classe per le dimensioni compact
//MOBILE - PORTRAIT
final class _DimensCompact extends Dimens {
  const _DimensCompact();
  @override
  double get paddingScreenHorizontal => Dimens.paddingHorizontal;

  @override
  double get paddingScreenVertical => Dimens.paddingVertical;

  @override
  double get profilePicSize => 64.0;
}

//classe per le dimensioni medium
//TABLET - PORTRAIT
//FOLDABLE - UNFOLDED
final class _DimensMedium extends Dimens {
  const _DimensMedium();
  @override
  double get paddingScreenHorizontal => 32;

  @override
  double get paddingScreenVertical => 48;

  @override
  double get profilePicSize => 96;
}

//classe per le dimensioni expanded
//DESKTOP
//MOBILE - LANDSCAPE
//TABLET - LANDSCAPE
//FOLDABLE - LANDSCAPE UNFOLDED
final class _DimensExpanded extends Dimens {
  const _DimensExpanded();
  @override
  double get paddingScreenHorizontal => 100;

  @override
  double get paddingScreenVertical => 64;

  @override
  double get profilePicSize => 128;
}
