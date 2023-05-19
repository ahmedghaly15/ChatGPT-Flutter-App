import 'package:flutter/material.dart';

import 'app_styles.dart';

class AppConstants {
  static const double kDefaultPadding = 8.0;

  static const List<String> models = [
    "Model 1",
    "Model 2",
    "Model 3",
    "Model 4",
    "Model 5",
    "Model 6",
  ];

  static List<DropdownMenuItem<String>>? get getModels {
    List<DropdownMenuItem<String>> modelItems =
        List<DropdownMenuItem<String>>.generate(models.length, (index) {
      return DropdownMenuItem(
        value: models[index],
        child: Text(
          models[index],
          style: AppStyles.textStyle16.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    });

    return modelItems;
  }

  static const chatMessages = [
    {
      'msg': "Hello who are you?",
      "chatIndex": 0,
    },
    {
      'msg': 'Hello, I am ChatGPT',
      'chatIndex': 1,
    },
    {
      'msg': "What's Flutter?",
      'chatIndex': 0,
    },
    {
      'msg':
          "Flutter is a free and open-source mobile application development framework created by Google. It allows developers to build natively compiled applications for mobile, web, and desktop platforms from a single codebase. Flutter uses the Dart programming language, which was also developed by Google, and provides a rich set of pre-built UI widgets that enable developers to create beautiful and responsive user interfaces for their applications.",
      'chatIndex': 1,
    },
    {
      'msg': "Okay, thanks",
      'chatIndex': 0,
    },
    {
      'msg': "You're welcome, anything can i help you with?",
      'chatIndex': 1,
    },
  ];
}
