import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? iconColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final double? elevation;
  final Border? border;
  final double? width;
  final double? height;
  final MainAxisSize? mainAxisSize;
  final double? iconSize;
  final double? spaceBetween;

  const CustomButton({
    super.key,
    required this.label,
    this.onPressed,
    this.icon,
    this.backgroundColor,
    this.textColor,
    this.iconColor,
    this.fontSize,
    this.fontWeight,
    this.borderRadius,
    this.padding,
    this.elevation,
    this.border,
    this.width,
    this.height,
    this.mainAxisSize,
    this.iconSize,
    this.spaceBetween,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height ?? 48,
      child: Material(
        elevation: elevation ?? 2,
        borderRadius: BorderRadius.circular(borderRadius ?? 12),
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor ?? Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(borderRadius ?? 12),
            border: border,
          ),
          child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(borderRadius ?? 12),
            child: Padding(
              padding: padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisSize: mainAxisSize ?? MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) ...[
                    Icon(
                      icon,
                      size: iconSize ?? 20,
                      color: iconColor ?? textColor ?? Theme.of(context).colorScheme.onPrimary,
                    ),
                    SizedBox(width: spaceBetween ?? 8),
                  ],
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: fontSize ?? 16,
                      fontWeight: fontWeight ?? FontWeight.w600,
                      color: textColor ?? Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}