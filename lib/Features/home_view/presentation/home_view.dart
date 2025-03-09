import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:subul_dashboard/core/utils/app_colors.dart';
import 'package:subul_dashboard/core/utils/assets.dart';
import 'package:subul_dashboard/core/widgets/text_logo.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Center(child: SvgPicture.asset(AssetsData.background1)),
              Padding(
                padding: const EdgeInsets.only(left: 91, top: 51),
                child: TextLogo(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 39, top: 148, bottom: 32),
                child: Container(
                  width: 365,
                  height: 844,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.deepPurple, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
