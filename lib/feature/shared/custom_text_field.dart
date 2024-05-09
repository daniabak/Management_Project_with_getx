import 'package:flutter/material.dart';
import 'package:management_project/core/resources/corlors.dart';


class CustomTextfield extends StatelessWidget {
  final String? hint;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final bool obscureText;
  final Text? label;
  final TextStyle? hintStyle;
  final TextEditingController? controller;
  final int? maxLength;
  final TextStyle? labelStyle;
  final TextStyle? floatingLabelStyle;
  final int maxLines;
  final String? Function(String?)? validator;
  final bool readOnly;
  final bool? isDense;
  final String? labelText;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final Widget? suffix;

  const CustomTextfield({
    super.key,
    this.hint,
    this.onChanged,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.obscureText = false,
    this.label,
    this.hintStyle,
    this.controller,
    this.maxLength,
    this.labelStyle,
    this.floatingLabelStyle,
    this.maxLines = 1,
    this.validator,
    this.readOnly = false,
    this.isDense,
    this.labelText,
    this.floatingLabelBehavior,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final Size screenSize = MediaQuery.of(context).size;

    // Calculate padding dynamically based on screen width
    final double horizontalPadding =
        screenSize.width * 0.05; // 8% of screen width

    // Adjust text size based on screen size (you can fine-tune this as needed)
    final double textSize =
        screenSize.width < 600 ? 16 : 18; // Smaller text for smaller screens
    return TextFormField(
      
      readOnly: readOnly,
      maxLines: maxLines,
      maxLength: maxLength,
      keyboardType: keyboardType,
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      onChanged: onChanged,
      decoration: InputDecoration(
        iconColor: ColorManager.second,
          floatingLabelBehavior: floatingLabelBehavior,
          errorStyle: const TextStyle(
            color: ColorManager.second,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          isDense: isDense,
          suffixIcon: suffixIcon,
          label: label,
          floatingLabelStyle: floatingLabelStyle,
          labelStyle: labelStyle,
          prefixIcon: prefixIcon,
          hintText: hintText,
        
          hintStyle: hintStyle?.copyWith(fontSize: textSize,color: ColorManager.navy) ??
              TextStyle(fontSize: textSize,),
          fillColor:ColorManager.second,
          filled: true,
          enabledBorder: buildBorder(),
          border: buildBorder(),
          focusedBorder: buildBorder( ColorManager.second),
          suffix: suffix),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide:
          BorderSide(color: color ?? ColorManager.second,width: 1.2),
    );
  }
}
