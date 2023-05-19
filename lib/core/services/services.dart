import 'package:chatgpt_flutter_app/features/chat/presentation/widgets/models_drop_down_button.dart';
import 'package:flutter/material.dart';

import '../global/app_colors.dart';
import '../global/app_constants.dart';
import '../global/app_styles.dart';

class Services {
  static Future<void> showModalSheet({required BuildContext context}) async {
    await showModalBottomSheet(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      )),
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(
            AppConstants.kDefaultPadding + 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                child: Text(
                  "Chosen Model:",
                  style: AppStyles.textStyle16.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Flexible(
                flex: 2,
                child: ModelsDropDownButton(),
              ),
            ],
          ),
        );
      },
    );
  }
}
