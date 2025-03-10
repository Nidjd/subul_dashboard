
import 'package:flutter/widgets.dart';
import 'package:subul_dashboard/Features/home_view/presentation/widgets/button_state.dart';
import 'package:subul_dashboard/core/utils/app_colors.dart';
import 'package:subul_dashboard/core/utils/styles.dart';

class ToggleBetweenCompanyAndClient extends StatelessWidget {
  const ToggleBetweenCompanyAndClient({
    super.key,
    required this.size,
    required this.selectedButton,
    required this.onTap,
    required this.text,
    required this.buttonState,
  });

  final Size size;
  final ButtonState selectedButton;
  final ButtonState buttonState;
  final void Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    bool isSelected = selectedButton == buttonState;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, top: 5, bottom: 5),
        child: Container(
          width: size.width * 0.09,
          height: size.height * 0.1,
          decoration: BoxDecoration(
            color: isSelected ? AppColors.deepPurple : AppColors.goldenYellow,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              text,

              style: Styles.textStyle20.copyWith(color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
