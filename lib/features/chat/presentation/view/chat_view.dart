import 'package:chatgpt_flutter_app/core/global/app_assets.dart';
import 'package:chatgpt_flutter_app/core/services/services.dart';
import 'package:flutter/material.dart';

import '../../../../core/global/app_constants.dart';
import '../widgets/chat_view_body.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  final bool isTyping = true;

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
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: appBarBuilder(),
        body: ChatViewBody(
          isTyping: isTyping,
          textEditingController: textEditingController,
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
          onPressed: () async {
            await Services.showModalSheet(context: context);
          },
          icon: const Icon(Icons.more_vert_rounded),
        ),
      ],
    );
  }
}
