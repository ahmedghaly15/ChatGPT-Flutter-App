import 'package:flutter/material.dart';

import '../../../../core/global/app_constants.dart';
import 'chat_item.dart';

class Conversation extends StatelessWidget {
  const Conversation({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: AppConstants.chatMessages.length,
        itemBuilder: (context, index) => ChatItem(
          msg: AppConstants.chatMessages[index]['msg'].toString(),
          chatIndex: int.parse(
            AppConstants.chatMessages[index]['chatIndex'].toString(),
          ),
        ),
        separatorBuilder: ((context, index) {
          return const SizedBox(
            height: AppConstants.kDefaultPadding,
          );
        }),
      ),
    );
  }
}
