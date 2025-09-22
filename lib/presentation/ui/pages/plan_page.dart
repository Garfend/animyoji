import 'package:animyoji/data/models/plan_model.dart';
import 'package:animyoji/helpers/extensions/int_extensions.dart';
import 'package:animyoji/helpers/extensions/padding_extensions.dart';
import 'package:animyoji/helpers/extensions/widget_extensions.dart';
import 'package:animyoji/presentation/ui/widgets/plan_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/fake_data/fake_plan.dart';
import '../../../gen/assets.gen.dart';

class PlanPage extends StatefulWidget {
  const PlanPage({super.key});

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  int selectedPlanIndex = 0;
  List<PlanModel> plans = [];

  @override
  void initState() {
    super.initState();
    plans = getMockPlans();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFE8E0FF), Color(0xFFF5F3FF)],
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            24.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Upgrade Plan',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SvgPicture.asset(
                  Assets.icons.cancel,
                  width: 28,
                  height: 28,
                ).onTap(() => Navigator.pop(context)),
              ],
            ).paddingHorizontal(20),
            24.height,
            Assets.images.planPageHero.image(
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            24.height,
            Text(
              'Seamless Anime Experience, Ad-Free.',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                fontFamily: 'Raleway',
              ),
              textAlign: TextAlign.center,
            ).paddingHorizontal(32),
            8.height,
            Text(
              'Enjoy unlimited anime streaming without interruptions.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).hintColor,
                fontFamily: 'Raleway',
              ),
              textAlign: TextAlign.center,
            ).paddingHorizontal(32),
            40.height,
            // Plan cards
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    ...plans.asMap().entries.map((entry) {
                      int index = entry.key;
                      PlanModel plan = entry.value;
                      return Column(
                        children: [
                          PlanCard(
                            plan: plan,
                            isSelected: selectedPlanIndex == index,
                            onTap: () =>
                                setState(() => selectedPlanIndex = index),
                          ),
                          if (index < plans.length - 1) 16.height,
                        ],
                      );
                    }).toList(),
                    const Spacer(),
                    // Continue button
                    Container(
                      width: double.infinity,
                      height: 56,
                      margin: EdgeInsets.only(bottom: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
