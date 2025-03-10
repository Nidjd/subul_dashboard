
import 'package:flutter/widgets.dart';
import 'package:subul_dashboard/core/utils/assets.dart';

class SmallCarWidget extends StatelessWidget {
  const SmallCarWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        AssetsData.smallCar,
        fit: BoxFit.cover,
        width: size.width * 0.1,
        height: size.height * 0.1,
      ),
    );
  }
}
