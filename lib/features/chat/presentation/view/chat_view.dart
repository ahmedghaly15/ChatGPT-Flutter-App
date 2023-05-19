import 'package:chatgpt_flutter_app/core/global/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AppAssets.openAiLogo),
        ),
        title: const Text("ChatGPT"),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) => const Text("Heelo"),
            ),
          ),
          if (_isTyping) ...[
            const SpinKitThreeBounce(
              color: Colors.white,
              size: 18,
              duration: Duration(milliseconds: 1400),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: textEditingController,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
