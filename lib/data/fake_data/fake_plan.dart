// lib/data/fake_data/fake_plans.dart
import '../models/plan_model.dart';

final List<Map<String, dynamic>> mockPlansJson = [
  {
    "planId": 1,
    "planTitle": "Monthly",
    "planPeriod": "/Month",
    "PlanPrice": "\$5 USD",
    "planDetails": "Include Family Sharing",
  },
  {
    "planId": 2,
    "planTitle": "Annually",
    "planPeriod": "/Year",
    "PlanPrice": "\$50 USD",
    "planDetails": "Include Family Sharing",
  },
];

List<PlanModel> getMockPlans() {
  return mockPlansJson.map((json) => PlanModel.fromJson(json)).toList();
}