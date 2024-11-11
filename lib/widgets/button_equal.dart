import 'package:calculator_app/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constant/colors.dart';

class EqualButton extends StatelessWidget {
  const EqualButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context,listen: false).setValue("="),
      child: Container(
        height: 160,
        width: 70,
        decoration: BoxDecoration(
          color: AppColors.buttonTextColor,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Shadow color with opacity
              offset: Offset(4, 4), // Horizontal and vertical offset
              blurRadius: 8, // Blur radius
              spreadRadius: 2, // Spread radius (optional)
            ),
          ],
        ),
        child: const Center(child: Text("=", style: TextStyle(fontSize: 32, color: Colors.white),),),
      ),
    );
  }
}