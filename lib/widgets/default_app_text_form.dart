import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultAppTextForm extends StatefulWidget {
  final bool enabled;
  final String? initialValue;
  final bool autofocus;
  final String? hintTxt;
  final bool borderIsEnabled;
  final bool marginIsEnabled;
  final TextInputType? inputData;
  final double radius;
  final bool readOnly;
  final Color? focusedBorderColor;
  final String? Function(String?)? validator;
  final dynamic Function(String?)? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final Function()? onEditingComplete;
  final Function()? onTap;
  final Widget? suffix;
  final Widget? suffixIcon;
  final int? maxLength;
  final int? maxLines;
  final Widget? prefix;
  final Widget? prefixIcon;
  final String? labelTxt;
  final bool expands;
  final FocusNode? focusNode;
  final double? verticalPadding;
  final double? horizontalPadding;
  final TextEditingController? controller;
  final Color? unfocusColor;
  final Color? hintColor;
  final Color? focusColor;
  final Color? borderColor;
  final Color? filledColor;
  final bool filled;
  final bool obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final AutovalidateMode autovalidateMode;
  final TextInputAction? textInputAction;
  final String? helperText;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final TextStyle? errorStyle;
  final String? errorText;
  final Iterable<String>? autofillHints;

  const DefaultAppTextForm(
      {Key? key,
      this.hintTxt,
      this.onFieldSubmitted,
      this.inputData,
      this.autofocus = false,
      this.borderIsEnabled = true,
      this.readOnly = false,
      this.obscureText = false,
      this.validator,
      this.onChanged,
      this.focusedBorderColor,
      this.initialValue,
      this.verticalPadding,
      this.horizontalPadding,
      this.suffixIcon,
      this.radius = 14,
      this.focusNode,
      this.maxLength,
      this.autovalidateMode = AutovalidateMode.onUserInteraction,
      this.enabled = true,
      this.maxLines,
      this.expands = false,
      this.labelTxt,
      this.prefix,
      this.unfocusColor,
      this.hintColor,
      this.focusColor,
      this.suffix,
      this.filled = true,
      this.marginIsEnabled = false,
      this.filledColor,
      this.prefixIcon,
      this.controller,
      this.inputFormatters,
      this.textInputAction,
      this.onEditingComplete,
      this.onTap,
      this.autofillHints,
      this.hintStyle,
      this.textStyle,
      this.helperText,
      this.errorText,
      this.errorStyle,
      this.borderColor})
      : super(key: key);

  @override
  State<DefaultAppTextForm> createState() => _DefaultAppTextFormState();
}

class _DefaultAppTextFormState extends State<DefaultAppTextForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin:
            EdgeInsets.symmetric(horizontal: widget.marginIsEnabled ? 16 : 0),
        child: TextFormField(
          autofocus: widget.autofocus,
          cursorColor: Colors.white,
          focusNode: widget.focusNode,
          onFieldSubmitted: widget.onFieldSubmitted,
          onEditingComplete: widget.onEditingComplete,
          autofillHints: widget.autofillHints,
          onTap: widget.onTap,
          readOnly: widget.readOnly,
          textInputAction: widget.textInputAction,
          autovalidateMode: widget.autovalidateMode,
          inputFormatters: widget.inputFormatters,
          expands: widget.expands,
          controller: widget.controller,
          enabled: widget.enabled,
          maxLines: widget.maxLines,
          maxLength: widget.maxLength,
          initialValue: widget.initialValue,
          style: widget.textStyle ??
              const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
          decoration: InputDecoration(
              errorMaxLines: 3,
              helperText: widget.helperText,
              filled: widget.filled ? true : false,
              fillColor: widget.filledColor,
              contentPadding: EdgeInsets.symmetric(
                  vertical: widget.verticalPadding ?? 20,
                  horizontal: widget.horizontalPadding ?? 12),
              errorStyle: widget.errorStyle ??
                  const TextStyle(fontSize: 12, height: 1.3, color: Colors.red),
              errorText: widget.errorText,
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.radius),
                  borderSide: const BorderSide(color: Colors.red)),
              suffix: widget.suffix,
              suffixIcon: widget.suffixIcon,
              border: !widget.borderIsEnabled
                  ? InputBorder.none
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(widget.radius),
                      borderSide:
                          BorderSide(color: widget.borderColor ?? Colors.blue)),
              enabledBorder: !widget.borderIsEnabled
                  ? InputBorder.none
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(widget.radius),
                      borderSide:
                          BorderSide(color: widget.borderColor ?? Colors.blue)),
              focusedBorder: !widget.borderIsEnabled
                  ? InputBorder.none
                  : OutlineInputBorder(
                      borderSide: BorderSide(
                          color: widget.focusedBorderColor ?? Colors.blue,
                          width: 1),
                      borderRadius: BorderRadius.circular(widget.radius),
                    ),
              prefix: widget.prefix,
              prefixIcon: widget.prefixIcon,
              hintText: widget.hintTxt,
              hintStyle: widget.hintStyle ??
                  const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
              labelText: widget.labelTxt,
              labelStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white)),
          keyboardType: widget.inputData,
          obscureText: widget.obscureText,
          validator: widget.validator,
          onChanged: widget.onChanged,
        ));
  }
}
