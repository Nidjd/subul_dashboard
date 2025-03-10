import 'package:flutter/material.dart';
import 'package:subul_dashboard/Features/home_view/presentation/widgets/background_widget.dart';
import 'package:subul_dashboard/Features/home_view/presentation/widgets/button_state.dart';
import 'package:subul_dashboard/Features/home_view/presentation/widgets/custom_button.dart';
import 'package:subul_dashboard/Features/home_view/presentation/widgets/small_car_widget.dart';
import 'package:subul_dashboard/Features/home_view/presentation/widgets/toggle_between_company_and_client.dart';
import 'package:subul_dashboard/core/utils/app_colors.dart';

import 'package:subul_dashboard/core/widgets/text_logo.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ButtonState selectedButton = ButtonState.company;
  void updateButton(ButtonState newState) {
    setState(() {
      selectedButton = newState;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              BackroundWidget(size: size),
              Padding(
                padding: const EdgeInsets.only(left: 91, top: 51),
                child: TextLogo(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 39, top: 148, bottom: 32),
                child: Container(
                  width: size.width * 0.3,
                  height: size.height * 1.3,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.deepPurple, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: size.width * 0.05,
                            right: size.width * 0.05,
                            top: size.height * 0.07,
                          ),
                          child: Container(
                            width:
                                size.width * 0.3 > 200 ? size.width * 0.3 : 200,
                            height:
                                size.height * 0.1 > 50 ? size.height * 0.1 : 50,
                            decoration: BoxDecoration(
                              color: AppColors.goldenYellow,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: ToggleBetweenCompanyAndClient(
                                    size: size,
                                    selectedButton: selectedButton,
                                    onTap:
                                        () => updateButton(ButtonState.company),
                                    text: 'شركة',
                                    buttonState: ButtonState.company,
                                  ),
                                ),
                                Expanded(
                                  child: ToggleBetweenCompanyAndClient(
                                    size: size,
                                    selectedButton: selectedButton,
                                    onTap:
                                        () => updateButton(ButtonState.client),
                                    text: 'عميل',
                                    buttonState: ButtonState.client,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.06),
                        CustomButton(
                          text: 'حذف عميل',
                          onTap: () => updateButton(ButtonState.deleteWorker),
                          buttonState: ButtonState.deleteWorker,
                          selectedButton: selectedButton,
                        ),
                        SizedBox(height: size.height * 0.06),
                        CustomButton(
                          text: 'الغاء شحنة',
                          onTap: () => updateButton(ButtonState.cancelShipment),
                          buttonState: ButtonState.cancelShipment,
                          selectedButton: selectedButton,
                        ),
                        SizedBox(height: size.height * 0.06),
                        CustomButton(
                          text: 'الشحنات',
                          onTap: () => updateButton(ButtonState.shipments),
                          buttonState: ButtonState.shipments,
                          selectedButton: selectedButton,
                        ),
                        SizedBox(height: size.height * 0.06),
                        CustomButton(
                          text: 'الشحنات الواردة',
                          onTap:
                              () => updateButton(ButtonState.incomingShipments),
                          buttonState: ButtonState.incomingShipments,
                          selectedButton: selectedButton,
                        ),
                        SizedBox(height: size.height * 0.2),
                        SmallCarWidget(size: size),
                      ],
                    ),
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
