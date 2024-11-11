import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator_app/constant/colors.dart';
import '../widgets/button_equal.dart';
import '../widgets/text_field.dart';
import 'button_data.dart';
import '../provider/cal_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    const padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);

    return Consumer<CalculatorProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text("Calculator App"),
            backgroundColor: Colors.white,
            centerTitle: true,
          ),
          body: Column(
            children: [
              // Row for icons (aligns history icon to the right)
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: padding,
                    child: Icon(Icons.toggle_off_outlined),
                  ),
                  Padding(
                    padding: padding,
                    child: Icon(Icons.history_outlined),
                  ),
                ],
              ),
              //const Spacer(),

              // CustomTextField with smaller font size
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: CustomTextField(
                  fontSize: 20,
                  fontColor: Color(0xFF637381), controller:  provider.equationController,
                  showCursor: true,
                  maxlines: null,


                ),
              ),

              // CustomTextField with larger font size and controller from the provider
              CustomTextField(
                controller: provider.resultController,  // Passing the controller from the provider
                showCursor: false, // Make cursor visible
              ),

              // Container for the calculator buttons
              Container(
                height: screenHeight * 0.6,
                width: double.infinity,
                padding: padding,
                decoration: const BoxDecoration(
                  color: AppColors.lightContainerColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) => buttonList[index]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) => buttonList[index + 4]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) => buttonList[index + 8]),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(3, (index) => buttonList[index + 12]),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(3, (index) => buttonList[index + 15]),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        const EqualButton(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
