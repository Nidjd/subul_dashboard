import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:subul_dashboard/core/widgets/text_logo.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: SvgPicture.asset(assetName))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 91, top: 51),
                  child: TextLogo(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
