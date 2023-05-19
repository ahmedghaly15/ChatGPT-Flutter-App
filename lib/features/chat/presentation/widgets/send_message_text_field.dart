import 'package:flutter/material.dart';

import '../../../../core/global/app_colors.dart';
import '../../../../core/global/app_constants.dart';
import '../../../../core/global/app_styles.dart';
import '../../../../core/global/app_texts.dart';

class SendMessageTextField extends StatelessWidget {
  const SendMessageTextField({
    super.key,
    required this.textEditingController,
  });

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(
          AppConstants.kDefaultPadding * 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.kDefaultPadding),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                controller: textEditingController,
                onSubmitted: (String message) {
                  // TODO: implement send message function
                },
                textCapitalization: TextCapitalization.sentences,
                style: AppStyles.textStyle18,
                cursorColor: Colors.white,
                decoration: const InputDecoration.collapsed(
                  hintText: AppTexts.textFieldHint,
                  hintStyle: AppStyles.textStyle16,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.send_rounded,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
