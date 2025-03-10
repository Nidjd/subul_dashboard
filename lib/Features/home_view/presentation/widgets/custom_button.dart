
import 'package:flutter/material.dart';


import 'package:subul_dashboard/Features/home_view/presentation/widgets/button_state.dart';
import 'package:subul_dashboard/core/utils/app_colors.dart';
import 'package:subul_dashboard/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function() onTap;
  final ButtonState buttonState;
  final ButtonState selectedButton;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.buttonState,
    required this.selectedButton,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isSelected = buttonState == selectedButton;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width * 0.2,
        height: size.height * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isSelected ? AppColors.deepPurple : AppColors.goldenYellow,
        ),
        child: Center(
          child: Text(
            text,
            style: Styles.textStyle24.copyWith(
              color: isSelected ? AppColors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
