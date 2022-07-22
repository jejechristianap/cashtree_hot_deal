import 'package:cashtree_hot_deal/src/config/style/app_text_styles.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.buttonName,
    required this.onPressed,
  }) : super(key: key);

  final String buttonName;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 45,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          buttonName,
          style: AppTextStyles.buttonTitle,
        ),
      ),
    );
  }
}
