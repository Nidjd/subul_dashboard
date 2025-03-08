import 'package:flutter/material.dart';
import 'package:subul_dashboard/core/utils/app_router.dart';
import 'package:subul_dashboard/core/utils/assets.dart';

void main() {
  runApp(const SubulDashboard());
}

class SubulDashboard extends StatelessWidget {
  const SubulDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData(fontFamily: AssetsData.almarai),
    );
  }
}
