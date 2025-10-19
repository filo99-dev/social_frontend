import 'package:flutter/material.dart';
import 'package:social_architecture_example/ui/core/themes/dimens.dart';

class WidgetSizes {
  const WidgetSizes(this.context);
  final BuildContext context;
  Dimens get dimens => Dimens.of(context);
  double get loginFormSize {
    final width = MediaQuery.sizeOf(context).width;
    return switch (dimens) {
      Dimens.compact => width * 0.9,
      Dimens.medium => 600,
      _ => 800,
    };
  }
}
