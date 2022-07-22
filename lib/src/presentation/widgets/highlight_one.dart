import 'package:flutter/material.dart';

import '../../config/style/app_colors.dart';

class HighlightOne extends StatelessWidget {
  const HighlightOne(
      {Key? key,
      this.imageTopLeft,
      this.imageBottomLeft,
      this.imageTopRight,
      this.imageBottomRight})
      : super(key: key);

  final String? imageTopLeft;
  final String? imageBottomLeft;
  final String? imageTopRight;
  final String? imageBottomRight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              /// Highlight Top Left
              Card(
                color: AppColors.background,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: imageTopLeft == null
                    ? const SizedBox(
                        height: 158,
                        width: double.infinity,
                      )
                    : Image.network(imageTopLeft!),
                elevation: 5,
              ),

              /// Highlight Bottom Left
              Card(
                color: AppColors.background,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const SizedBox(
                  height: 80,
                  width: double.infinity,
                ),
                elevation: 5,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              /// Highlight Top Right
              Card(
                color: AppColors.background,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const SizedBox(
                  height: 80,
                  width: double.infinity,
                ),
                elevation: 5,
              ),

              /// Highlight Top Bottom
              Card(
                color: AppColors.background,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const SizedBox(
                  height: 158,
                  width: double.infinity,
                ),
                elevation: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
