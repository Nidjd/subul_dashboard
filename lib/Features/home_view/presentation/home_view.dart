import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:subul_dashboard/core/utils/app_colors.dart';
import 'package:subul_dashboard/core/utils/assets.dart';
import 'package:subul_dashboard/core/utils/styles.dart';
import 'package:subul_dashboard/core/widgets/text_logo.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isSelected = false;
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
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 75,
                          left: 38,
                          right: 48,
                        ),
                        child: Container(
                          width: 279,
                          height: 71,
                          decoration: BoxDecoration(
                            color: AppColors.goldenYellow,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isSelected = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8,
                                    top: 5,
                                    bottom: 5,
                                  ),
                                  child: Container(
                                    width: 125,
                                    height: 61,
                                    decoration: BoxDecoration(
                                      color:
                                          isSelected
                                              ? AppColors.goldenYellow
                                              : AppColors.deepPurple,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'شركة',

                                        style: Styles.textStyle20.copyWith(
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isSelected = true;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                    bottom: 5,
                                    right: 8,
                                  ),
                                  child: Container(
                                    width: 125,
                                    height: 61,
                                    decoration: BoxDecoration(
                                      color:
                                          isSelected
                                              ? AppColors.deepPurple
                                              : AppColors.goldenYellow,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'عميل',

                                        style: Styles.textStyle20.copyWith(
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 38.0),
                      Container(
                        width: 279,
                        height: 71,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.goldenYellow,
                        ),
                        child: Center(
                          child: Text('حذف عميل', style: Styles.textStyle24),
                        ),
                      ),
                      const SizedBox(height: 38.0),
                      Container(
                        width: 279,
                        height: 71,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.goldenYellow,
                        ),
                        child: Center(
                          child: Text('إلغاء شحنة', style: Styles.textStyle24),
                        ),
                      ),
                      const SizedBox(height: 38.0),
                      Container(
                        width: 279,
                        height: 71,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.goldenYellow,
                        ),
                        child: Center(
                          child: Text('الشحنات', style: Styles.textStyle24),
                        ),
                      ),
                    ],
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
