import 'package:cashtree_hot_deal/src/presentation/widgets/toolbar_button.dart';
import 'package:flutter/material.dart';

import '../../config/assets/app_assets.dart';

class MainToolbar extends StatelessWidget {
  const MainToolbar({
    Key? key,
    required this.onBellTap,
    required this.onMessageTap,
    required this.onLoginTap,
  }) : super(key: key);

  final VoidCallback onBellTap;
  final VoidCallback onMessageTap;
  final VoidCallback onLoginTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1,
      title: Row(
        children: [
          Image.asset(AppAssets.logoHotdeal),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ToolbarButton(asset: AppAssets.icBell, onBellTap: onBellTap),
              const SizedBox(
                width: 10,
              ),
              ToolbarButton(asset: AppAssets.icMessage, onBellTap: onBellTap),
              const SizedBox(
                width: 10,
              ),
              ToolbarButton(asset: AppAssets.icLogin, onBellTap: onBellTap),
            ],
          )),
        ],
      ),
    );
  }
}
