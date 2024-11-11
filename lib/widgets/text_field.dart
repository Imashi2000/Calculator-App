import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final Color fontColor;
  final double fontSize;
  final bool showCursor;
  final int? maxlines;
  const CustomTextField({
    super.key,required this.controller,
    this.fontColor = const Color(0xFF1E1E1E),
    this.fontSize = 48,
    this.showCursor = false,
    this.maxlines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
            border: InputBorder.none,),
        style: TextStyle(fontSize: fontSize,color: fontColor),
        textAlign: TextAlign.right,
        readOnly: true,
        autofocus: true,
        showCursor: showCursor,
        maxLines: maxlines,

      ),
    );
  }
}