import 'package:animyoji/gen/assets.gen.dart';
import 'package:animyoji/helpers/extensions/int_extensions.dart';
import 'package:animyoji/presentation/ui/widgets/selelction_circle.dart';
import 'package:flutter/material.dart';

import '../../../data/models/plan_model.dart';

class PlanCard extends StatelessWidget {
  final PlanModel plan;
  final bool isSelected;
  final VoidCallback onTap;

  const PlanCard({
    super.key,
    required this.isSelected,
    required this.onTap,
    required this.plan,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFF2D2D5F) : Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Plan icon
            Assets.images.planImage.image(
              width: 85,
              height: 85,
              fit: BoxFit.contain,
            ),
            16.width,
            // Plan details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    plan.planTitle,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway',
                      color: isSelected
                          ? Colors.white
                          : Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  4.height,
                  Row(
                    children: [
                      Text(
                        plan.PlanPrice,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Raleway',
                              color: isSelected
                                  ? Colors.white
                                  : Theme.of(context).colorScheme.onSurface,
                            ),
                      ),
                      Text(
                        ' ${plan.planPeriod}',
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              fontFamily: 'Raleway',
                              color: isSelected
                                  ? Colors.grey[300]
                                  : Theme.of(context).hintColor,
                            ),
                      ),
                    ],
                  ),
                  4.height,
                  Text(
                    plan.planDetails,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontFamily: 'Raleway',
                      color: isSelected
                          ? Colors.grey[300]
                          : Theme.of(context).hintColor,
                    ),
                  ),
                ],
              ),
            ),
            // Selection circle
            SelectionCircle(
              isSelected: isSelected,
              onTap: onTap,
              selectedColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
