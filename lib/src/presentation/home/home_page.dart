import 'dart:developer';

import 'package:cashtree_hot_deal/src/config/assets/app_assets.dart';
import 'package:cashtree_hot_deal/src/config/route/route_constant.dart';
import 'package:cashtree_hot_deal/src/config/style/app_colors.dart';
import 'package:cashtree_hot_deal/src/config/style/app_text_styles.dart';
import 'package:cashtree_hot_deal/src/presentation/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../generated/l10n.dart';
import '../../core/response_classify.dart';
import '../widgets/highlight_one.dart';
import '../widgets/main_toolbar.dart';
import '../widgets/primary_button.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: controller,
      builder: (_) {
        switch (controller.example.status) {
          case Status.LOADING:
            log('Loading: ${controller.example.status}');
            break;
          case Status.ERROR:
            log('Error: ${controller.example.error}');
            break;
          case Status.COMPLETED:
            log('Completed: ${controller.example.data?.toRawJson()}'); // ${exampleToJson(controller.example.data)}
            break;
          default:
        }
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: MainToolbar(
              onBellTap: () {
                log('Bell Tap');
                controller.testCallDetail();
              },
              onMessageTap: () {
                log('Message Tap');
              },
              onLoginTap: () {
                log('Login Tap');
              },
            ),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: TextField(),
                ),
                Card(
                  margin: const EdgeInsets.only(bottom: 10),
                  color: AppColors.background,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const SizedBox(
                    height: 100,
                    width: double.infinity,
                  ),
                  elevation: 5,
                ),
                controller.example.status == Status.LOADING
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : const HighlightOne(),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppAssets.icFlash,
                        height: 26.5,
                      ),
                      const SizedBox(
                        width: 6.1,
                      ),
                      Text(
                        S.of(context).flashSale,
                        style: AppTextStyles.title.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            S.of(context).seeAll,
                            style: AppTextStyles.heading1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                PrimaryButton(
                  buttonName: S.of(context).login,
                  onPressed: () {},
                ),
                SizedBox(
                  width: 170,
                  height: 45,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      AppAssets.icLogin,
                      height: 21.65,
                      width: 21.65,
                    ),
                    label: Text(
                      S.of(context).signUp,
                    ),
                  ),
                ),
                HighlightOne(
                  imageBottomLeft: controller.example.data?.title,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
