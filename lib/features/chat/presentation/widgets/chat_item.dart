import 'package:chatgpt_flutter_app/core/global/app_assets.dart';
import 'package:chatgpt_flutter_app/core/global/app_colors.dart';
import 'package:chatgpt_flutter_app/core/global/app_constants.dart';
import 'package:chatgpt_flutter_app/core/global/app_styles.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({
    super.key,
    required this.msg,
    required this.chatIndex,
  });

  final String msg;
  final int chatIndex;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: chatIndex == 0
          ? AppColors.scaffoldBackgroundColor
          : AppColors.cardColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppConstants.kDefaultPadding * 2,
          horizontal: AppConstants.kDefaultPadding,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              chatIndex == 0 ? AppAssets.userImage : AppAssets.botImage,
              width: 30,
              height: 30,
            ),
            const SizedBox(width: AppConstants.kDefaultPadding),
            Expanded(
              child: Text(
                msg,
                style: AppStyles.textStyle18.copyWith(
                  fontWeight:
                      chatIndex == 0 ? FontWeight.w500 : FontWeight.w600,
                ),
              ),
            ),
            chatIndex == 0
                ? const SizedBox.shrink()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      InkWell(
                        splashColor: Colors.grey,
                        onTap: () {},
                        child: const Icon(Icons.thumb_up_alt_outlined),
                      ),
                      const SizedBox(width: 5),
                      InkWell(
                        onTap: () {},
                        splashColor: Colors.grey,
                        child: const Icon(Icons.thumb_down_alt_outlined),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
