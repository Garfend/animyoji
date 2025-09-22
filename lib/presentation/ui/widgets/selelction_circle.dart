import 'package:flutter/material.dart';

class SelectionCircle extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;
  final Color? selectedColor;
  final Color? unselectedColor;
  final double size;

  const SelectionCircle({
    super.key,
    required this.isSelected,
    required this.onTap,
    this.selectedColor,
    this.unselectedColor,
    this.size = 24,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected
              ? (selectedColor ?? Theme.of(context).colorScheme.primary)
              : Colors.transparent,
          border: Border.all(
            color: isSelected
                ? (selectedColor ?? Theme.of(context).colorScheme.primary)
                : (unselectedColor ?? Colors.grey[400]!),
            width: 2,
          ),
        ),
        child: isSelected
            ? Icon(Icons.check, size: size * 0.6, color: Colors.white)
            : null,
      ),
    );
  }
}
