
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:subul_dashboard/core/utils/assets.dart';

class BackroundWidget extends StatelessWidget {
  const BackroundWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        AssetsData.background1,
        fit: BoxFit.cover,
        width: size.width,
        height: size.height,
      ),
    );
  }
}
