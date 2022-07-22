import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppButtonStyles {
  static final roundedRipple = ElevatedButton.styleFrom(
    shape: const CircleBorder(),
    primary: Colors.transparent,
    onPrimary: AppColors.primary,
    elevation: 0,
    padding: const EdgeInsets.all(0),
    shadowColor: Colors.transparent,
  );
}
