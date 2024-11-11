import 'package:flutter/material.dart';
import '../constant/colors.dart';
import '../widgets/button_numbers.dart';

List<Widget> buttonList = [
  ButtonNumbers(label: "C", textColor: AppColors.buttonTextColor,elevation: 1,elevationColor: AppColors.lightContainerColor),
  const ButtonNumbers(label: "%",backgroundColor:AppColors.lightButtonColor,elevation: 1,elevationColor: AppColors.lightButtonColor,),
  const ButtonNumbers(label:"/",backgroundColor:AppColors.lightButtonColor,elevation: 1,elevationColor: AppColors.lightButtonColor,),
  const ButtonNumbers(label: "x",backgroundColor:AppColors.lightButtonColor,elevation: 1,elevationColor: AppColors.lightButtonColor,),
  const ButtonNumbers(label: "7"),
  const ButtonNumbers(label: "8"),
  const ButtonNumbers(label: "9"),
  const ButtonNumbers(label: "-",backgroundColor:AppColors.lightButtonColor,elevation: 1,elevationColor: AppColors.lightButtonColor,),
  const ButtonNumbers(label: "4"),
  const ButtonNumbers(label: "5"),
  const ButtonNumbers(label: "6"),
  const ButtonNumbers(label: "+",backgroundColor:AppColors.lightButtonColor,elevation: 1,elevationColor: AppColors.lightButtonColor,),
  const ButtonNumbers(label: "1"),
  const ButtonNumbers(label: "2"),
  const ButtonNumbers(label: "3"),
  ButtonNumbers(label: "AC", textColor: AppColors.buttonTextColor,elevation: 1,elevationColor: AppColors.lightContainerColor),
  const ButtonNumbers(label: "0"),
  const ButtonNumbers(label: "."),
];
