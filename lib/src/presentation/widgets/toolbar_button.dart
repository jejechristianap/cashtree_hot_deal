import 'package:flutter/material.dart';

class ToolbarButton extends StatelessWidget {
  const ToolbarButton({
    Key? key,
    required this.asset,
    required this.onBellTap,
  }) : super(key: key);

  final String asset;
  final VoidCallback onBellTap;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onBellTap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              asset,
              height: 20,
              width: 20,
            ),
          ),
        ),
      ),
    );
  }
}
