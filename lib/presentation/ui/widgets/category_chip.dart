import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String label;
  final bool selected;
  final ValueChanged<bool>? onSelected;

  const CategoryChip({
    super.key,
    required this.label,
    this.selected = false,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(
        label,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: selected
              ? Theme.of(context).colorScheme.onSecondary
              : Theme.of(context).textTheme.bodyMedium?.backgroundColor,
        ),
      ),
      shape: StadiumBorder(),
      selected: selected,
      onSelected: onSelected,
      selectedColor: Theme.of(context).colorScheme.primary,
      showCheckmark: false,
      labelStyle: TextStyle(
        color: selected
            ? Theme.of(context).colorScheme.onSecondary
            : Theme.of(context).textTheme.bodyMedium?.color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
