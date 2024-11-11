import 'package:calculator_app/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constant/colors.dart';

class ButtonNumbers extends StatelessWidget {
  final String label;
  final Color textColor;
  final Color backgroundColor;
  final double elevation;
  final Color elevationColor;

  const ButtonNumbers({
    super.key,required this.label,
    this.textColor = const Color(0xFF1E1E1E),
    this.backgroundColor = AppColors.lightContainerColor,
    this.elevation = 0.0,
    this.elevationColor = AppColors.lightContainerColor,
  });



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Provider.of<CalculatorProvider>(context,listen: false).setValue(label);
      },
      child: Material(
        elevation: elevation,
        color: elevationColor,
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(radius: 36,
          backgroundColor: backgroundColor,
          child: DefaultTextStyle(
            child: Text(label) ,
            style: TextStyle(color: textColor,fontSize: 32, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}