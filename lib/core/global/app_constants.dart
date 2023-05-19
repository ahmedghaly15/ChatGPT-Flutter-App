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
      'msg': 'What do you know about mobile app development?',
      'chatIndex': 0,
    },
    {
      'msg':
          'Native app development involves creating an application that is designed specifically for a particular mobile platform, such as iOS or Android. Native apps are typically developed using platform-specific programming languages and tools, such as Swift or Objective-C for iOS, or Java or Kotlin for Android. Native apps often provide the best performance and user experience, but they can be more time-consuming and expensive to develop. Cross-platform app development involves creating an application that can run on multiple mobile platforms using a single codebase. Cross-platform development tools, such as React Native, Xamarin, or Flutter, allow developers to write code once and deploy it to multiple platforms. Cross-platform apps can be developed more quickly and cost-effectively than native apps, but they may not provide the same level of performance and user experience as native apps.',
      'chatIndex': 1,
    },
    {
      'msg': "What's Dart?",
      'chatIndex': 0,
    },
    {
      'msg':
          "Dart is a programming language created by Google. It is an object-oriented, class-based language that is designed to be easy to learn, fast, and scalable. Dart was initially released in 2011 and has since become the primary language used to build applications with Google's Flutter framework.",
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
      'msg': 'Is Flutter powerful ?',
      'chatIndex': 0,
    },
    {
      'msg':
          "Yes, Flutter is a powerful mobile application development framework that has gained significant popularity among developers in recent years. Here are a few reasons why Flutter is considered to be a powerful tool for building mobile app",
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
