import 'package:chatgpt_flutter_app/core/global/app_assets.dart';
import 'package:chatgpt_flutter_app/core/global/app_colors.dart';
import 'package:chatgpt_flutter_app/core/global/app_styles.dart';
import 'package:chatgpt_flutter_app/core/global/app_texts.dart';
import 'package:chatgpt_flutter_app/features/chat/presentation/widgets/chat_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../../core/global/app_constants.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  final bool _isTyping = true;

  late TextEditingController textEditingController;

  @override
  void initState() {
    textEditingController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarBuilder(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppConstants.kDefaultPadding),
        child: Column(
          children: <Widget>[
            const SizedBox(height: AppConstants.kDefaultPadding * 2),
            Flexible(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: 6,
                itemBuilder: (context, index) => ChatItem(
                  msg: AppConstants.chatMessages[index]['msg'].toString(),
                  chatIndex: int.parse(
                    AppConstants.chatMessages[index]['chatIndex'].toString(),
                  ),
                ),
                separatorBuilder: ((context, index) {
                  return const SizedBox(
                    height: AppConstants.kDefaultPadding * 2,
                  );
                }),
              ),
            ),
            const SizedBox(height: AppConstants.kDefaultPadding * 2),
            if (_isTyping) ...[
              const SpinKitThreeBounce(
                color: Colors.white,
                size: 18,
                duration: Duration(milliseconds: 1400),
              ),
              const SizedBox(height: AppConstants.kDefaultPadding * 2),
              Container(
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
                        // TODO: use textEditingController with condition to make onPressed disabled or not to control changing the color of icon like in Social-App
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send_rounded,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  AppBar appBarBuilder() {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.kDefaultPadding,
          vertical: 4,
        ),
        child: Image.asset(AppAssets.openAiLogo),
      ),
      title: const Text("ChatGPT"),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert_rounded),
        ),
      ],
    );
  }
}
