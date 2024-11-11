import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier{
  final equationController = TextEditingController();
  final resultController = TextEditingController();
  static const int resultMaxLength = 15;

  CalculatorProvider() {
    resultController.text = "0";  // Set initial value of result to 0
  }

  setValue (String value){
    String equation = equationController.text;

    switch (value) {
      case "AC":
        equationController.clear();
        resultController.text = "0";  // Reset result when clearing
        break;
      case "C":
        equationController.text = equation.substring(0, equation.length - 1);
        break;
      case "x":
        equationController.text += "*";
        break;
      case "=":
        computeResult();
        break;
      default:
        equationController.text += value;
    }
    notifyListeners();
  }

  @override
  void dispose(){
    super.dispose();
    equationController.dispose();
    resultController.dispose();
  }

  void computeResult() {
    String text = equationController.text;
    try {
      final result = text.interpret();

      // Convert result to string and check its length
      String resultString = result.toString();

      if (resultString.length > resultMaxLength) {
        resultController.text = "Error";  // Show error if result is too long
      } else {
        resultController.text = resultString;  // Otherwise, show the result
      }
    } catch (e) {
      resultController.text = "Error";  // Handle any errors and show error message
    }
  }


}