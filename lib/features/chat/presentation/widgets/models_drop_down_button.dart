import 'package:chatgpt_flutter_app/core/global/app_colors.dart';
import 'package:chatgpt_flutter_app/core/global/app_constants.dart';
import 'package:flutter/material.dart';

class ModelsDropDownButton extends StatefulWidget {
  const ModelsDropDownButton({super.key});

  @override
  State<ModelsDropDownButton> createState() => _ModelsDropDownButtonState();
}

class _ModelsDropDownButtonState extends State<ModelsDropDownButton> {
  String currentModel = "Model 1";

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      dropdownColor: AppColors.scaffoldBackgroundColor,
      iconEnabledColor: Colors.white,
      value: currentModel,
      items: AppConstants.getModels,
      onChanged: (value) {
        setState(() {
          currentModel = value.toString();
        });
      },
    );
  }
}
