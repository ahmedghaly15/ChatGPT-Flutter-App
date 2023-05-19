import 'package:chatgpt_flutter_app/features/chat/presentation/widgets/conversation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../../core/global/app_constants.dart';
import 'send_message_text_field.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({
    super.key,
    required this.isTyping,
    required this.textEditingController,
  });

  final bool isTyping;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: AppConstants.kDefaultPadding),
      child: Column(
        children: <Widget>[
          const SizedBox(height: AppConstants.kDefaultPadding * 2),
          const Conversation(),
          const SizedBox(height: AppConstants.kDefaultPadding * 2),
          if (isTyping) ...[
            const SpinKitThreeBounce(
              color: Colors.white,
              size: 18,
              duration: Duration(milliseconds: 1400),
            ),
            const SizedBox(height: AppConstants.kDefaultPadding * 2),
            SendMessageTextField(textEditingController: textEditingController),
          ],
        ],
      ),
    );
  }
}
