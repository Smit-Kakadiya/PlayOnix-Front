import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:playonix/config/theme/theme_colors.dart';

import '../constants/layout_constant.dart';

class TextFormFieldWidget extends StatelessWidget {
  final Key? textFormFieldKey;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final InputDecoration? decoration;
  final bool? isReadOnly;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final Color? fillColor;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final String? hintText;
  final Color? hintTextColor;
  final TextAlign? textAlign;
  final Widget? suffixIcon;
  final int? maxLines;
  final int? minLines;
  final int? errorLines;
  final EdgeInsetsGeometry? contentPadding;
  final ValueChanged<String>? onFieldSubmitted;
  final FontWeight? fontWeight;
  final ValueChanged<String>? onChanged;
  final Iterable<String>? autofillHints;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final Color? borderColor;
  final Color? errorBorderColor;
  final Color? focusedErrorBorderColor;
  final bool? autofocus;
  final VoidCallback? onTap;
  final InputCounterWidgetBuilder? buildCounter;
  final bool? expands;
  final Brightness? keyboardAppearance;
  final int? maxLength;
  final bool? obscureText;
  final VoidCallback? onEditingComplete;
  final FormFieldSetter<String>? onSaved;
  final String? restorationId;
  final bool? showCursor;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final StrutStyle? strutStyle;
  final TextAlignVertical? textAlignVertical;
  final TextCapitalization? textCapitalization;
  final TextDirection? textDirection;
  final ToolbarOptions? toolbarOptions;
  final InputBorder? border;
  final double? borderRadius;
  final double? borderWidth;
  final String? errorText;
  final Widget? prefixWidget;
  final Widget? prefixIconWidget;
  final BoxConstraints? prefixIconWidgetConstraints;
  final BoxConstraints? suffixIconWidgetConstraints;
  final Color? shadowColor;
  final String? fontFamily;
  final bool? enable;
  final double? width;

  const TextFormFieldWidget({
    this.textFormFieldKey,
    this.controller,
    this.textInputType,
    this.decoration,
    this.isReadOnly,
    this.textInputAction,
    this.focusNode,
    this.fillColor,
    this.validator,
    this.inputFormatters,
    this.hintText,
    this.hintTextColor,
    this.textAlign,
    this.suffixIcon,
    this.maxLines,
    this.minLines,
    this.errorLines,
    this.contentPadding,
    this.onFieldSubmitted,
    this.fontWeight,
    this.onChanged,
    this.autofillHints,
    this.textStyle,
    this.hintStyle,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.errorBorderColor,
    this.focusedErrorBorderColor,
    this.onTap,
    this.expands,
    this.keyboardAppearance,
    this.maxLength,
    this.obscureText,
    this.onEditingComplete,
    this.onSaved,
    this.restorationId,
    this.showCursor,
    this.smartDashesType,
    this.smartQuotesType,
    this.strutStyle,
    this.textAlignVertical,
    this.textCapitalization,
    this.textDirection,
    this.toolbarOptions,
    this.autofocus,
    this.buildCounter,
    this.border,
    this.borderRadius,
    this.borderWidth,
    this.errorText,
    this.prefixWidget,
    this.prefixIconWidget,
    this.shadowColor,
    this.enable,
    this.width,
    this.fontFamily,
    this.prefixIconWidgetConstraints,
    this.suffixIconWidgetConstraints,
    this.borderColor,
  }) : super(key: textFormFieldKey);

  factory TextFormFieldWidget.primary({
    TextEditingController? controller,
    TextInputType? textInputType,
    InputDecoration? decoration,
    bool? isReadOnly,
    TextInputAction? textInputAction,
    FocusNode? focusNode,
    Color? fillColor,
    FormFieldValidator<String>? validator,
    List<TextInputFormatter>? inputFormatters,
    String? hintText,
    Color? hintTextColor,
    TextAlign? textAlign,
    Widget? suffixIcon,
    int? maxLines,
    int? minLines,
    EdgeInsetsGeometry? contentPadding,
    ValueChanged<String>? onFieldSubmitted,
    FontWeight? fontWeight,
    ValueChanged<String>? onChanged,
    Iterable<String>? autofillHints,
    TextStyle? textStyle,
    TextStyle? hintStyle,
    Color? enabledBorderColor,
    Color? focusedBorderColor,
    Color? errorBorderColor,
    Color? focusedErrorBorderColor,
    bool? autofocus,
    VoidCallback? onTap,
    InputCounterWidgetBuilder? buildCounter,
    bool? expands,
    Brightness? keyboardAppearance,
    int? maxLength,
    bool? obscureText,
    VoidCallback? onEditingComplete,
    FormFieldSetter<String>? onSaved,
    String? restorationId,
    bool? showCursor,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    StrutStyle? strutStyle,
    TextAlignVertical? textAlignVertical,
    TextCapitalization? textCapitalization,
    TextDirection? textDirection,
    ToolbarOptions? toolbarOptions,
    double? borderRadius,
    double? borderWidth,
    String? errorText,
    Widget? prefixWidget,
    Widget? prefixIconWidget,
    BoxConstraints? prefixIconWidgetConstraints,
    BoxConstraints? suffixIconWidgetConstraints,
    Color? shadowColor,
    String? fontFamily,
    bool? enable,
    double? width,
  }) {
    return TextFormFieldWidget(
      controller: controller,
      textInputType: textInputType,
      decoration: decoration,
      isReadOnly: isReadOnly,
      textInputAction: textInputAction,
      focusNode: focusNode,
      fillColor: fillColor,
      validator: validator,
      inputFormatters: inputFormatters,
      hintText: hintText,
      hintTextColor: hintTextColor,
      textAlign: textAlign,
      suffixIcon: suffixIcon,
      maxLines: maxLines,
      minLines: minLines,
      contentPadding: contentPadding,
      onFieldSubmitted: onFieldSubmitted,
      fontWeight: fontWeight,
      onChanged: onChanged,
      autofillHints: autofillHints,
      textStyle: textStyle,
      hintStyle: hintStyle,
      enabledBorderColor: enabledBorderColor,
      focusedBorderColor: focusedBorderColor,
      errorBorderColor: errorBorderColor,
      focusedErrorBorderColor: focusedErrorBorderColor,
      autofocus: autofocus,
      onTap: onTap,
      buildCounter: buildCounter,
      expands: expands,
      keyboardAppearance: keyboardAppearance,
      maxLength: maxLength,
      obscureText: obscureText,
      onEditingComplete: onEditingComplete,
      onSaved: onSaved,
      restorationId: restorationId,
      showCursor: showCursor,
      smartDashesType: smartDashesType,
      smartQuotesType: smartQuotesType,
      strutStyle: strutStyle,
      textAlignVertical: textAlignVertical,
      textCapitalization: textCapitalization,
      textDirection: textDirection,
      toolbarOptions: toolbarOptions,
      borderRadius: borderRadius,
      borderWidth: borderWidth,
      errorText: errorText,
      prefixWidget: prefixWidget,
      prefixIconWidget: prefixIconWidget,
      prefixIconWidgetConstraints: prefixIconWidgetConstraints,
      suffixIconWidgetConstraints: suffixIconWidgetConstraints,
      shadowColor: shadowColor,
      fontFamily: fontFamily,
      enable: enable,
      width: width,
    );
  }

  @override
  Widget build(BuildContext context) {
    final double scaleFactor = MediaQuery.of(context).textScaleFactor;
    final themeColor = Theme.of(context).extension<ThemeColors>();
    return TextFormField(
      textAlign: textAlign ?? TextAlign.left,
      inputFormatters: [
        ...?inputFormatters,
        FilteringTextInputFormatter.deny(RegExp(r"^\s*")),
        FilteringTextInputFormatter.deny(RegExp(r"[^\x00-\x7F]+")), // Deny non-ASCII characters (which includes emojis)
      ],
      validator: validator,
      focusNode: focusNode,
      maxLines: maxLines ?? 1,
      minLines: minLines ?? 1,
      maxLength: maxLength,
      textInputAction: textInputAction ?? TextInputAction.next,
      readOnly: isReadOnly ?? false,
      style: textStyle ?? Theme.of(context).textTheme.bodyLarge,// ColorConstants.primaryColor
      keyboardType: textInputType ?? TextInputType.text,
      controller: controller,
      decoration: decoration ??
          InputDecoration(
            counterText: '',
            prefixIconConstraints: prefixIconWidgetConstraints,
            suffixIconConstraints: suffixIconWidgetConstraints,
            prefixIcon: prefixIconWidget,
            prefix: prefixWidget ?? const SizedBox.shrink(),
            errorText: errorText != null && (errorText?.isNotEmpty ?? false) ? errorText : null,
            suffixIcon: suffixIcon,
            hintStyle: hintStyle ??
             Theme.of(context).textTheme.bodyLarge?.copyWith(color: themeColor?.captionTextColor),
            hintText: hintText ?? '',
            border: border ?? InputBorder.none,
            contentPadding: contentPadding ?? EdgeInsets.symmetric(vertical: 14, horizontal: 24),
            fillColor: fillColor ?? themeColor?.containerColor,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(RadiusConstant.commonFullRadius),
            ),
            focusedBorder:OutlineInputBorder(
              borderSide: BorderSide(color: themeColor?.primaryColor ?? Colors.transparent,width: 2),
              borderRadius: BorderRadius.circular(RadiusConstant.commonFullRadius),
            ),
            errorBorder:OutlineInputBorder(
              borderSide:  BorderSide(color: themeColor?.errorColor ?? Colors.transparent),
              borderRadius: BorderRadius.circular(RadiusConstant.commonFullRadius),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide:  BorderSide(color: themeColor?.errorColor ?? Colors.transparent),
              borderRadius: BorderRadius.circular(RadiusConstant.commonFullRadius),
            ),
            errorMaxLines: errorLines ?? 3,

          ),
      onChanged: onChanged,
      autofillHints: autofillHints,
      onFieldSubmitted: onFieldSubmitted,
      onTap: onTap ?? () {},
      autofocus: autofocus ?? false,
      autocorrect: false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorColor: themeColor?.primaryColor, // Replace with ColorConstants.primaryColor
      cursorRadius: const Radius.circular(100),
      cursorHeight: 20,
      enabled: enable ?? true,
      expands: expands ?? false,
      keyboardAppearance: keyboardAppearance ?? Brightness.light,
      obscureText: obscureText ?? false,
      obscuringCharacter: '●',
      onEditingComplete: onEditingComplete ?? () {},
      onSaved: onSaved ?? (val) {},
    );
  }
}
